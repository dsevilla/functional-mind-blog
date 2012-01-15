;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;
(defconst *fmb-not-word-chars*
  '(?\. ?\[ ?\] ?\, ?\( ?\) ?\\ ?\" ?\' ?\« ?\» ?\! ?\? ?\¡
        ?\¿ ?\~ ?\= ?\* ?\$ ?\# ?\< ?\> ?\{ ?\} ?\& ?\| ?\: ?\;))

(defun fmb-not-word-char-remover (string)
  (substitute-if ?\  #'(lambda (c) (member c *fmb-not-word-chars*)) string))

(defun fmb-numeric-char-p (char)
  (and (>= char ?0) (<= char ?9)))

(defun fmb-update-words-for-post (post pnum)
  (let* ((word-list
          (split-string
           (downcase
            (fmb-not-word-char-remover
             (concat
              (fmb-post-clean-body post)
              " "
              (fmb-markup-clean (fmb-post-title post)))))))
         (word-list-final
          (remove-duplicates
           (remove-if #'(lambda (w)
                          (let ((l (length w)))
                            (or (< l 3)
                                (> l 20)
                                (every #'fmb-numeric-char-p w))))
                      word-list)
           :test #'equal)))
    (map nil
         #'(lambda (w)
             (push pnum (gethash w (fmb-blog-words-to-post-num-hash *the-blog*)))
             (push post (gethash w (fmb-blog-words-to-post-hash *the-blog*))))
         word-list-final)))

(defun fmb-update-words-for-all-posts ()
  (loop for i = 0 then (1+ i)
       for j in (fmb-blog-posts *the-blog*)
       do (fmb-update-words-for-post j i)))

(defun fmb-generate-search-js ()
  (with-temp-file (fmb-blog-file-name "search.js")
    (labels ((link-to-post (post)
               (replace-regexp-in-string "'" "\\\\'"
                (h:a `((href . ,(fmb-post-url post)))
                   (fmb-first-n-chars (fmb-markup-clean
                                       (fmb-post-title post)) 50)))))
      ;; (write-string
      ;;  (format nil "// search.js for functional mind. Generated statically~%") file)
      ;; (write-string
      ;;  (format nil "// from the set of posts.~%") file)
      (insert "var posts = { 'postlist' : [")
      (insert (mapconcat #'(lambda (p) (format "'%s'" (link-to-post p)))
                         (fmb-blog-posts *the-blog*) ",\n"))
      (insert "]};\n\n")

      (insert "var posts_for_word = {\n")

      (loop for k being the hash-keys in
            (fmb-blog-words-to-post-num-hash *the-blog*)
         using (hash-value v)
         do (insert
             (format "'%s' : [" k)
             (mapconcat #'(lambda (pn) (format "%d" pn))
                        (reverse v) ", ")
             "]\n"))

      (insert "};\n"))))

(defun fmb-generate-description-files ()
  (loop for i = 0 then (1+ i)
     for p in (fmb-blog-posts *the-blog*) do
       (with-temp-file (fmb-blog-file-name (format "desc-%d.js" i))
         (insert (replace-regexp-in-string
                  "\n" ""
                  (fmb-first-n-chars (fmb-post-description p) 50))))))

;;; end of file
