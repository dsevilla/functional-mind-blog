;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package dsevilla.blog)

(defun split-list (l length)
  "Returns two values, the first `length' elements of the list, and the
  pointer to the cdr of that list, or the remaining elements of `l' if
  the length of l is less or equal `length'."
  (loop repeat length
     for x on l append (list (car x)) into v
     finally (return (values v (cdr x)))))

(defun page-name (filename pagenum)
  (if (> pagenum 1)
      (format nil "~A-page-~A" filename pagenum)
      filename))

(defun file-target (filename pagenum)
  (concatenate 'string
               (blog-file-name (page-name filename pagenum))
               ".html"))

(defun page-link-target (filename pagenum)
  (concatenate 'string (page-name filename pagenum) ".html"))

(defun generate-page (filename title post-list)
  (do ((pagenum 1 (1+ pagenum))
       (rest-list post-list)
       (prev-page nil)
       (next-page nil))
      ((not rest-list))
    (multiple-value-bind (lst rest)
        (split-list rest-list *posts-per-page*)
      (setf rest-list rest)
      (with-open-file (file (file-target filename pagenum)
                            :direction :output
                            :if-exists :supersede)
                                        ; header
        (write-string (html-theme-header title) file)
                                        ; content
        (setf next-page (when rest-list
                          (page-link-target filename (1+ pagenum))))
        (write-string (html-theme-content title lst prev-page next-page) file)
        (setf prev-page (page-link-target filename pagenum))
                                        ; sidebar
        (write-string (html-theme-sidebar title) file)
                                        ; footer
        (write-string (html-theme-footer title) file)))))

(defun generate-rss-page (title post-list)
  (with-open-file (file (blog-file-name "rss2.xml")
                        :direction :output
                        :if-exists :supersede)
    ; header
    (write-string (rss-header title) file)
    ; content
    (write-string (rss-content title post-list) file)
    ; footer
    (write-string (rss-footer title) file)))
