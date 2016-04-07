;;; fmb-org-posts.el --- org-mode utility functions to read posts written in .org
;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;


;;; Commentary:
;;

;;; Code:

(eval-when-compile
  (require 'cl)
  (require 'ox)
  (require 'ox-html)
  (require 'fmb-blog))

;; adapted from http://www.gnu.org/software/emacs/emacs-lisp-intro/html_node/Files-List.html
(defun fmb-files-in-below-directory (directory)
  "List the .org files in DIRECTORY and in its sub-directories."
  (interactive "DDirectory name: ")
  (let (org-files-list
        (current-directory-list
         (directory-files-and-attributes directory t)))
    ;; while we are in the current directory
    (while current-directory-list
      (cond
       ;; check to see whether filename ends in `.org'
       ;; and if so, append its name to a list.
       ((equal ".org" (substring (caar current-directory-list) -4))
        (setq org-files-list
              (cons (caar current-directory-list) org-files-list)))
       ;; check whether filename is that of a directory
       ((eq t (cadar current-directory-list))
        ;; decide whether to skip or recurse
        (if
            (equal "."
                   (substring (car (car current-directory-list)) -1))
            ;; then do nothing since filename is that of
            ;;   current directory or parent, "." or ".."
            ()
          ;; else descend into the directory and repeat the process
          (setq org-files-list
                (append
                 (fmb-files-in-below-directory
                  (caar current-directory-list))
                 org-files-list)))))
      ;; move to the next filename in the list; this also
      ;; shortens the list so the while loop eventually comes to an end
      (setq current-directory-list (cdr current-directory-list)))
    ;; return the filenames
    org-files-list))

(defun fmb-import-org-posts ()
  "Import all posts written in .org files.
Search all .org files, create a buffer for each of them,
extract all the initial properties (export properties), and then generate
the HTML equivalent of the body. Add it to the list of actual posts, that
will be ordered by date finally."
  (setq org-html-htmlize-output-type 'css)
  (dolist (f (fmb-files-in-below-directory "content/posts"))
    (with-current-buffer (find-file-noselect f)
      (let* ((file-properties (org-export-get-environment 'html))
             (categories (plist-get file-properties :keywords)))
        (unless (let ((case-fold-search 1))
                  (string-match "draft" categories))
          (let ((title (substring-no-properties (car (plist-get file-properties :title))))
                (date (substring-no-properties
                       (plist-get (cadar (plist-get file-properties :date)) :raw-value)))
                (body-as-html
                 (org-export-as 'html nil t t)))
            (multiple-value-bind (secs mins hours day month year)
                (org-parse-time-string date)
              (fmb-new-post title
                            :day day
                            :month month
                            :year year
                            :hours hours
                            :minutes mins
                            :categories (mapcar #'intern
                                                (split-string categories nil t))
                            :body body-as-html))
            (kill-buffer)))))))

(provide 'fmb-org-posts)

;;; fmb-org-posts.el ends here
