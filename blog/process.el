;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(defun fmb:page-generation-function (post)
  (fmb:generate-page (fmb:post-slug post)
                     (fmb:post-title post) (list post)))

(defun fmb:generate-post-pages ()
  (map nil #'fmb:page-generation-function *fmb:posts*))

(defun fmb:generate-categories-pages ()
  (map nil #'(lambda (category)
               (let ((name (downcase (substring (symbol-name category) 1))))
                 (fmb:generate-page
                  (format "category-%s" name)
                  (format "Posts of the %s category" name)
                  (fmb:posts-for-category category))))
       (fmb:all-categories)))

(defun fmb:generate-archives-pages ()
  (map nil #'(lambda (archive-cons)
               (fmb:generate-page
                (archive-file archive-cons)
                (format "Archives for %s, %d"
                        (fmb:month-name (car archive-cons))
                        (cdr archive-cons))
                (remove-if #'(lambda (post)
                               (not (equal archive-cons
                                           (fmb:cons-from-post-time post))))
                           *fmb:posts*)))
       *fmb:months-years*))

(defun fmb:generate-rss ()
  (fmb:generate-rss-page *fmb:blog-title* *fmb:posts*))

(progn
;;; Housekeeping. Calculate initial variables & values
  (message "Doing pre-calculations...\n")

  (let ((calc-words-for-posts
         (fmb:update-words-for-all-posts)))
    (time (progn
            (generate-all-categories)
            (classify-posts-by-category)
            (generate-dates-for-archives)
            (generate-archive-li)
            (generate-categories-links)))

;;; Generate index.html
    (format t "Generating index page...~%")
    (time (generate-page "index" nil *posts*))

;;; Generate posts-pages
    (format t "Generating post pages...~%")
    (time (generate-post-pages))

;;; Generate categories pages
    (format t "Generating categories pages...~%")
    (time (generate-categories-pages))

;;; Generate archives pages
    (format t "Generating archives pages...~%")
    (time (generate-archives-pages))

;;; Generate RSS
    (format t "Generating RSS...~%")
    (time (generate-rss))

;;; Generate description files
    (format t "Generating description files...~%")
    (time (generate-description-files))

;;; Generate search.js
    #+sbcl
    (progn
      (format t "Waiting for the calculation of words per post...~%")
      (join-thread calc-words-for-posts))

    (format t "Generating search.js...~%")
    (time (generate-search-js))

;;; Generate Atom... really?

;;; PROCESS END
))
