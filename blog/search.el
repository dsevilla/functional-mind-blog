;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

;; (defun min2 (n1 n2)
;;   (if (null n1)
;;       n2
;;       (if (null n2)
;;           n1
;;           (min n1 n2))))

;; (defun split-by-one-space-or-newline (string)
;;   "Returns a list of substrings of string
;; divided by ONE space each.
;; Note: Two consecutive spaces will be seen as
;; if there were an empty string between them."
;;   (loop for i = 0 then (1+ j)
;;      as j = (min2 (position ?\  string :start i)
;;                   (position #\n string :start i))
;;      collect (subseq string i j)
;;      while j))

(defvar *words-to-post-num-hash* (make-hash-table :test #'equal))

(defvar *words-to-post-hash* (make-hash-table :test #'equal))

(defun not-word-char-remover (string)
  (let ((chars '(?\. ?\[ ?\] ?\, ?\( ?\) ?\\ ?\" ?\' ?\« ?\» ?\! ?\? ?\¡
                 ?\¿ ?\~ ?\= ?\* ?\$ ?\# ?\< ?\> ?\{ ?\} ?\& ?\| ?\: ?\;)))
    (substitute-if ?\  #'(lambda (c) (find c chars)) string)))

(defun numeric-char-p (char)
  (and (>= char ?0) (<= char ?9)))

(defun update-words-for-post (post pnum)
  (let* ((word-list
          (split-string
           (downcase
            (not-word-char-remover
             (concat
              (post-clean-body post)
              " "
              (markup-clean (post-title post)))))))
         (word-list-final
          (remove-duplicates
           (remove-if #'(lambda (w)
                          (let ((l (length w)))
                            (or (< l 3) (> l 20) (every #'numeric-char-p w))))
                      word-list)
           :test #'equal)))
    (map nil
         #'(lambda (w)
             (push pnum (gethash w *words-to-post-num-hash*))
             (push post (gethash w *words-to-post-hash*)))
         word-list-final)))

(defun update-words-for-all-posts ()
  (loop for i = 0 then (1+ i)
       for j in *posts*
       do (update-words-for-post j i)))

(defun generate-search-js ()
  (with-temp-file (blog-file-name "search.js")
    (labels ((link-to-post (post)
               (replace-regexp-in-string "'" "\\\\'"
                (a `((:href . ,(post-url post)))
                   (first-n-chars (markup-clean (post-title post)) 50)))))
      ;; (write-string
      ;;  (format nil "// search.js for functional mind. Generated statically~%") file)
      ;; (write-string
      ;;  (format nil "// from the set of posts.~%") file)
      (insert "var posts = { 'postlist' : [")
      (insert (mapconcat #'(lambda (p) (format "'%s'" (link-to-post p)))
                         *posts* ",\n"))
      (insert (format "]};\n\n"))

      (insert "var posts_for_word = {\n")

      (loop for k being the hash-keys in *words-to-post-num-hash*
         using (hash-value v)
         do (insert
             (concat
              (format "'%s' : [" k)
              (mapconcat #'(lambda (pn) (format "%d" pn))
                         (reverse v) ", ")
              "]")))

      (insert "};\n"))))

(defun generate-description-files ()
  (loop for i = 0 then (1+ i)
     for p in *posts* do
       (with-temp-file (blog-file-name (format "desc-%d.js" i))
         (insert (replace-regexp-in-string
                  "\n" ""
                  (first-n-chars (post-description p) 50))))))

;;; end of file
