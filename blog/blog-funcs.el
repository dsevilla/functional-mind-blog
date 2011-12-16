;;; -*- mode: emacs-lisp; -*-

(define-skeleton add-new-post
  "Add a new post with the current date and time. Ask for the post title."
  "Post title: "
  "(new-post" \n
  > "\"" str "\"" \n
  > ":body \"" _  "\"" \n
  > ":categories '(:general)" \n
  > ":body-format :string" \n
  > (format-time-string
     ":hours %H :minutes %M :day %e :month %m :year %Y)"
     (current-time)) \n )

(defun org-to-html ()
  (interactive)
  (when (mark)
    (save-excursion
      (let ((text (buffer-substring-no-properties (point) (mark))))
        (delete-region (point) (mark))
        (insert
         (concat "\""
                 (replace-regexp-in-string
                  "\"" "\\\\\""
                  (replace-regexp-in-string
                   "\\\\" "\\\\\\\\"
                   (with-temp-buffer
                     (insert text)
                     (org-export-region-as-html
                      (point-min)
                      (point-max)
                      t 'string))))
                 "\""))))))
