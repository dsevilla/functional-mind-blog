;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(eval-when-compile
  (require 'cl))

(defun split-list (l length)
  "Returns two values, the first `length' elements of the list, and the
  pointer to the cdr of that list, or the remaining elements of `l' if
  the length of l is less or equal `length'."
  (loop repeat length
     for x on l append (list (car x)) into v
     finally (return (values v (cdr x)))))

(defun page-name (filename pagenum)
  (if (> pagenum 1)
      (format "%s-page-%s" filename pagenum)
      filename))

(defun file-target (filename pagenum)
  (concat (blog-file-name (page-name filename pagenum))
          ".html"))

(defun page-link-target (filename pagenum)
  (concat (page-name filename pagenum) ".html"))

(defun generate-page (filename title post-list)
  (do ((pagenum 1 (1+ pagenum))
       (rest-list post-list)
       (prev-page nil)
       (next-page nil))
      ((not rest-list))
    (multiple-value-bind (lst rest)
        (split-list rest-list *posts-per-page*)
      (let ((rest-list rest))
        (with-temp-file (file-target filename pagenum)
                                        ; header
          (insert (html-theme-header title))
                                        ; content
          (setf next-page (when rest-list
                            (page-link-target filename (1+ pagenum))))
          (insert (html-theme-content title lst prev-page next-page))
          (setf prev-page (page-link-target filename pagenum))
                                        ; sidebar
          (insert (html-theme-sidebar title))
                                        ; footnoteter
          (insert (html-theme-footer title)))))))

(defun generate-rss-page (title post-list)
  (with-temp-file (blog-file-name "rss2.xml")
    ; header
    (insert (rss-header title))
    ; content
    (insert (rss-content title post-list))
    ; footer
    (insert (rss-footer title))))
