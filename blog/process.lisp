;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package dsevilla.blog)

(defun page-generation-function (post)
  (generate-page (format nil "~A" (slug post))
                 (post-title post) (list post)))

#+sbcl
(defun generate-post-pages ()
  (map nil
       #'(lambda (post)
           (make-thread (lambda () (page-generation-function post))))
       *posts*))

#-sbcl
(defun generate-post-pages ()
  (map nil #'page-generation-function *posts*))

(defun generate-categories-pages ()
  (map nil #'(lambda (category)
               (let ((name (symbol-name category)))
                 (generate-page
                  (format nil "category-~(~A~)" name)
                  (format nil "Posts of the ~(~A~) category" name)
                  (posts-for-category category))))
       (all-categories)))

(defun generate-archives-pages ()
  (map nil #'(lambda (archive-cons)
               (generate-page
                (archive-file archive-cons)
                (format nil "Archives for ~A, ~A"
                        (month-name (car archive-cons))
                        (cdr archive-cons))
                (remove-if #'(lambda (post)
                               (not (equal archive-cons
                                           (cons-from-post-time post))))
                           *posts*)))
       *months-years*))

(defun generate-rss ()
  (generate-rss-page *blog-title* *posts*))

(progn
;;; Housekeeping. Calculate initial variables & values
  (format t "Doing pre-calculations...~%")

  (let ((calc-words-for-posts
         #+sbcl
          (make-thread (lambda () (update-words-for-all-posts)))
          #-sbcl
          (update-words-for-all-posts)))
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
