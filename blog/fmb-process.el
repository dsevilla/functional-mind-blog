;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;
(eval-when-compile
  (require 'cl)
  (require 'fmb-html-opti)
  (require 'fmb-theme)
  (require 'fmb-blog)
  (require 'fmb-posts)
  (require 'fmb-rss2)
  (require 'fmb-pages)
  (require 'fmb-org-posts)
  (require 'fmb-search))

(defun fmb-page-generation-function (post)
  (fmb-generate-page (fmb-post-slug post)
                     (fmb-post-title post) (list post)))

(defun fmb-generate-post-pages ()
  (mapc #'fmb-page-generation-function (fmb-blog-posts *the-blog*)))

(defun fmb-generate-categories-pages ()
  (mapc #'(lambda (category)
            (let ((name (downcase (symbol-name category))))
              (fmb-generate-page
               (format "category-%s" name)
               (format "Posts of the %s category" name)
               (fmb-posts-for-category category))))
        (fmb-hash-keys (fmb-blog-posts-for-category *the-blog*))))

(defun fmb-generate-archives-pages ()
  (mapc #'(lambda (archive-cons)
            (fmb-generate-page
             (fmb-archive-file archive-cons)
             (format "Archives for %s, %d"
                     (fmb-month-name (car archive-cons))
                     (cdr archive-cons))
             (remove-if #'(lambda (post)
                            (not (equal archive-cons
                                        (fmb-cons-from-post-time post))))
                        (fmb-blog-posts *the-blog*))))
        (fmb-blog-months-years *the-blog*)))

(defun fmb-generate-rss ()
  (fmb-generate-rss-page (fmb-blog-title *the-blog*)
                         (fmb-blog-posts *the-blog*)))

(defun fmb-do-process ()
  ;; Read org files
  (fmb-import-org-posts)

  (message "Processing org-mode posts.\n")
  ;; order posts by date
  (fmb-sort-posts-by-date)

  ;; Housekeeping. Calculate initial variables & values
  (message "Doing pre-calculations...\n")

  (let ((calc-words-for-posts
         (fmb-update-words-for-all-posts)))
    (fmb-classify-posts-by-category)
    (fmb-generate-dates-for-archives)
    (fmb-generate-archive-li)
    (fmb-generate-categories-links)

    ;; Generate index.html
    (message "Generating index page...\n")
    (fmb-generate-page "index" nil (fmb-blog-posts *the-blog*))

    ;; Generate posts-pages
    (message "Generating post pages...\n")
    (fmb-generate-post-pages)

    ;; Generate categories pages
    (message "Generating categories pages...\n")
    (fmb-generate-categories-pages)

    ;; Generate archives pages
    (message "Generating archives pages...\n")
    (fmb-generate-archives-pages)

    ;; Generate RSS
    (message "Generating RSS...\n")
    (fmb-generate-rss)

    ;; Generate description files
    (message "Generating description files...\n")
    (fmb-generate-description-files)

    ;; Generate search.js
    (message "Generating search.js...\n")
    (fmb-generate-search-js)

    ;; Generate Atom... really?

    ;; PROCESS END
))

(provide 'fmb-process)
