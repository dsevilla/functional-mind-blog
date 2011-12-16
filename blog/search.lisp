;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package dsevilla.blog)

(defun min2 (n1 n2)
  (if (null n1)
      n2
      (if (null n2)
          n1
          (min n1 n2))))

(defun split-by-one-space-or-newline (string)
  "Returns a list of substrings of string
divided by ONE space each.
Note: Two consecutive spaces will be seen as
if there were an empty string between them."
  (loop for i = 0 then (1+ j)
     as j = (min2 (position #\Space string :start i)
                  (position #\Newline string :start i))
     collect (subseq string i j)
     while j))

(defparameter *words-to-post-num-hash* (make-hash-table :test #'equal))

(defparameter *words-to-post-hash* (make-hash-table :test #'equal))

(defun not-word-char-remover (string)
  (let ((chars '(#\. #\[ #\] #\, #\( #\) #\\ #\" #\' #\« #\» #\! #\? #\¡
                 #\¿ #\~ #\= #\* #\$ #\# #\< #\> #\{ #\} #\& #\| #\: #\;)))
    (reduce #'(lambda (s c)
                (substitute #\Space c s)) chars :initial-value string)))

(defun numeric-char-p (char)
  (find char "0123456789"))

(defun update-words-for-post (post pnum)
  (let* ((word-list
          (split-by-one-space-or-newline
           (string-downcase
            (not-word-char-remover
             (concatenate 'string
                          (post-clean-body post)
                          " "
                          (markup-clean (post-title post)))))))
         (word-list-final
          (remove-duplicates
           (remove-if #'(lambda (w)
                          (or (< (length w) 3)
                              (> (length w) 20)
                              (every #'numeric-char-p w)))
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
  (with-open-file (file (blog-file-name "search.js")
                        :direction :output
                        :if-exists :supersede)
    (labels ((link-to-post (post)
               (replace-all
                (a `((:href . ,(post-url post)))
                   (first-n-chars (markup-clean (post-title post)) 50))
                "'" "\\'")))
      ;; (write-string
      ;;  (format nil "// search.js for functional mind. Generated statically~%") file)
      ;; (write-string
      ;;  (format nil "// from the set of posts.~%") file)
      (write-string "var posts = { 'postlist' : [" file)
      (format file "'~A'" (link-to-post (first *posts*)))

      (map nil #'(lambda (p) (format file ",~%'~A'" (link-to-post p)))
           (cdr *posts*))
      (format file "]};~%~%")

      (format file "var posts_for_word = {~%")

      (loop for k being the hash-keys in *words-to-post-num-hash*
         using (hash-value v)
         do (format file "'~A' : [~{~A~^, ~}],~%" k (reverse v)))

      (format file "};~%"))))

(defun generate-description-files ()
  (loop for i = 0 then (1+ i)
     for p in *posts* do
       (with-open-file (file (blog-file-name (format nil "desc-~A.js" i))
                             :direction :output
                             :if-exists :supersede)
         (write-string (remove
                        #\Newline
                        (first-n-chars (post-description p) 50)) file))))

;;; end of file
