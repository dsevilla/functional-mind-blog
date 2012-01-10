;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(eval-when-compile
  (require 'cl))

;; (defun fmb:split-list (l length)
;;   "Returns two values, the first `length' elements of the list, and the
;;   pointer to the cdr of that list, or the remaining elements of `l' if
;;   the length of l is less or equal `length'."
;;   (loop repeat length
;;      for x on l append (list (car x)) into v
;;      finally (return (values v (cdr x)))))

;; unfortunately the above function doesn't work in emacs-lisp, so we have
;; to revert to this much more inefficient version
(defun fmb:split-list (org-list pos)
  (let (left (right org-list))
    (while (and (> pos 0) right)
      (push (car right) left)
      (setf right (cdr right))
      (setf pos (1- pos)))
    (values (nreverse left) right)))

(defun fmb:page-name (filename pagenum)
  (if (> pagenum 1)
      (format "%s-page-%s" filename pagenum)
      filename))

(defun fmb:file-target (filename pagenum)
  (concat (fmb:blog-file-name (fmb:page-name filename pagenum))
          ".html"))

(defun fmb:page-link-target (filename pagenum)
  (concat (fmb:page-name filename pagenum) ".html"))

(defun fmb:generate-page (filename title post-list)
  (let ((pagenum 1)
        (rest-list post-list)
        prev-page
        next-page)
    (while rest-list
      (multiple-value-bind (lst rest)
          (fmb:split-list rest-list *fmb:posts-per-page*)
        (with-temp-file (fmb:file-target filename pagenum)
                                        ; header
          (insert (fmb:html-theme-header title))
                                        ; content
          (setf next-page
                (when rest (fmb:page-link-target filename (1+ pagenum))))
          (insert (fmb:html-theme-content title lst prev-page next-page))
          (setf prev-page (fmb:page-link-target filename pagenum))
                                        ; sidebar
          (insert (fmb:html-theme-sidebar title))
                                        ; footnoteter
          (insert (fmb:html-theme-footer title)))
        (setf rest-list rest)
        (incf pagenum)))))

(defun fmb:generate-rss-page (title post-list)
  (with-temp-file (fmb:blog-file-name "rss2.xml")
    ; header
    (insert (fmb:rss-header title))
    ; content
    (insert (fmb:rss-content title post-list))
    ; footer
    (insert (fmb:rss-footer title))))
