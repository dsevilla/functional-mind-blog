;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(defun fmb-page-generation-function (post)
  (fmb-generate-page (fmb-post-slug post)
                     (fmb-post-title post) (list post)))

(defun fmb-generate-post-pages ()
  (map nil #'fmb-page-generation-function *fmb-posts*))

(defun fmb-generate-categories-pages ()
  (map nil #'(lambda (category)
               (let ((name (downcase (symbol-name category))))
                 (fmb-generate-page
                  (format "category-%s" name)
                  (format "Posts of the %s category" name)
                  (fmb-posts-for-category category))))
       (fmb-all-categories)))

(defun fmb-generate-archives-pages ()
  (map nil #'(lambda (archive-cons)
               (fmb-generate-page
                (fmb-archive-file archive-cons)
                (format "Archives for %s, %d"
                        (fmb-month-name (car archive-cons))
                        (cdr archive-cons))
                (remove-if #'(lambda (post)
                               (not (equal archive-cons
                                           (fmb-cons-from-post-time post))))
                           *fmb-posts*)))
       *fmb-months-years*))

(defun fmb-generate-rss ()
  (fmb-generate-rss-page *fmb-blog-title* *fmb-posts*))

(progn
;;; Housekeeping. Calculate initial variables & values
  (message "Doing pre-calculations...\n")

  (let ((calc-words-for-posts
         (fmb-update-words-for-all-posts)))
    (fmb-generate-all-categories)
    (fmb-classify-posts-by-category)
    (fmb-generate-dates-for-archives)
    (fmb-generate-archive-li)
    (fmb-generate-categories-links)

;;; Generate index.html
    (message "Generating index page...\n")
    (fmb-generate-page "index" nil *fmb-posts*)

;;; Generate posts-pages
    (message "Generating post pages...\n")
    (fmb-generate-post-pages)

;;; Generate categories pages
    (message "Generating categories pages...\n")
    (fmb-generate-categories-pages)

;;; Generate archives pages
    (message "Generating archives pages...\n")
    (fmb-generate-archives-pages)

;;; Generate RSS
    (message "Generating RSS...\n")
    (fmb-generate-rss)

;;; Generate description files
    (message "Generating description files...\n")
    (fmb-generate-description-files)

;;; Generate search.js
    (message "Generating search.js...\n")
    (fmb-generate-search-js)

;;; Generate Atom... really?

;;; PROCESS END
))
