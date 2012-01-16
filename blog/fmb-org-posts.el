;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(eval-when-compile
  (require 'cl)
  (require 'org-exp))

; org-infile-export-plist
; #+TITLE:
; #+DATE:
; #+KEYWORDS:

; from http://www.gnu.org/software/emacs/emacs-lisp-intro/html_node/Files-List.html
(defun fmb-files-in-below-directory (directory)
  "List the .org files in DIRECTORY and in its sub-directories."
  ;; Although the function will be used non-interactively,
  ;; it will be easier to test if we make it interactive.
  ;; The directory will have a name such as
  ;;  "/usr/local/share/emacs/22.1.1/lisp/"
  (interactive "DDirectory name: ")
  (let (org-files-list
        (current-directory-list
         (directory-files-and-attributes directory t)))
    ;; while we are in the current directory
    (while current-directory-list
      (cond
       ;; check to see whether filename ends in `.org'
       ;; and if so, append its name to a list.
       ((equal ".org" (substring (car (car current-directory-list)) -4))
        (setq org-files-list
              (cons (car (car current-directory-list)) org-files-list)))
       ;; check whether filename is that of a directory
       ((eq t (car (cdr (car current-directory-list))))
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
                 (files-in-below-directory
                  (car (car current-directory-list)))
                 org-files-list)))))
      ;; move to the next filename in the list; this also
      ;; shortens the list so the while loop eventually comes to an end
      (setq current-directory-list (cdr current-directory-list)))
    ;; return the filenames
    org-files-list))

(provide 'fmb-org-posts)
