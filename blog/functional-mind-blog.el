;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

;; (defpackage dsevilla.blog
;;   (:use "COMMON-LISP" "HTML"
;;         #+sbcl
;;         :sb-thread
;;   ) ;"COM.GIGAMONKEYS.PATHNAMES")
;;   )

(declaim (optimize (speed 3) (safety 0) (debug 3)))

;;; TODO: Maybe all these parameters should form a blog class

;;; Blog configuration constants

(eval-when-compile
  (require 'cl))

(defconst *fmb:base-url* "fm")

(defconst *fmb:absolute-url* (concat "/" *fmb:base-url*))

(defconst *fmb:blog-internet-url*
  (concat "http://neuromancer.inf.um.es" *fmb:absolute-url*))

(defconst *fmb:blog-internet-rss-url*
  (concat *fmb:blog-internet-url* "/rss2.xml"))

(defconst *fmb:base-img-url* "img")
(defconst *fmb:img-internet-url*
  (concat *fmb:blog-internet-url* "/" *fmb:base-img-url*))

(defconst *fmb:blog-title* "Functional Mind")
(defconst *fmb:blog-subtitle*
  "an emacs-lisp and org-mode based blog by diego sevilla")

(defconst *fmb:rss-description-length* 400
  "Length of the description string in the RSS.")

(defconst *fmb:rss-posts-max* 100
  "Number of max posts in the RSS.")

(defconst *fmb:posts-per-page* 50
  "Number of posts per page.")

(defvar *fmb:post-slug-hash* (make-hash-table :test #'equal))

(defvar *fmb:posts* ()
  "List of posts. Will be populated with the entries.")

(defvar *fmb:number-of-posts* 0
  "This is used to speed up calculations, to avoid calculating the
  length of the *fmb:posts* list. Maybe other approaches could have been used.")

(defvar *fmb:months-years* ()
  "List of pairs (month . year) for the posts of this blog. This is
  needed as a variable because it is used twice. First to generate the
  pages themselves and then to generate the sidebar list.")

(defvar *fmb:blog-fmb:links* ()
  "List of fmb:links of this blog.")

;;; Decode time
(defun fmb:get-actual-time-for-the-post ()
    "Return a new association list to be put into the timestamp field of a blog post"
    (multiple-value-bind (secs mins hours day month year)
        (decode-time)
      (declare (ignore secs))
      (list (cons :hours hours)
            (cons :minutes mins)
            (cons :day day)
            (cons :month month)
            (cons :year year))))

(declaim (inline fmb:time-list))
(defun fmb:time-list (&optional &key day
                                &optional &key month
                                &optional &key year
                                &optional &key hours
                                &optional &key minutes)
  (or (and day month year)
      (error "day, month, and year must be supplied"))
  (list (cons :hours (or hours 0))
        (cons :minutes (or minutes 0))
        (cons :day day)
        (cons :month month)
        (cons :year year)))

;;; http://roeim.net/vetle/docs/cl-webapp-intro/part-1/
(defstruct fmb:post
  title
  body
  (description nil)
  clean-body
  (categories '(:general))
  (slug nil)
  (body-format :string)
  day
  month
  year
  (hours 0)
  (minutes 0)
  (timestamp '()))

(declaim (inline fmb:post-timestamp))
(defun fmb:calc-post-timestamp (post)
  (fmb:time-list :day (fmb:post-day post)
                 :month
                 (let ((m (fmb:post-month post)))
                   (if (symbolp m)
                       (1+ (position m *fmb:month-symbols*))
                     m))
                 :year (fmb:post-year post)
                 :hours (fmb:post-hours post)
                 :minutes (fmb:post-minutes post)))


(declaim (inline fmb:remove-non-url-chars))
(defun fmb:remove-non-url-chars (string)
  (declare (optimize speed) (string string))
   (coerce
    (loop for c across string  ; that Spanish thing...
         for j = (cond
                   ((= ?\  c) ?-)
                   ((or (and (>= c ?a) (<= c ?z))
                        (and (>= c ?A) (<= c ?Z))
                        (and (>= c ?0) (<= c ?9)))
                    c)
                   ((= ?á c) ?a)
                   ((= ?é c) ?e)
                   ((= ?í c) ?i)
                   ((= ?ó c) ?o)
                   ((= ?ú c) ?u)
                   ((= ?ñ c) ?n)
                   (t nil))
       when j collect j)
    'string))

(declaim (inline fmb:empty-post-slug))
(defun fmb:empty-post-slug (post)
  (let ((timestamp (fmb:post-timestamp post)))
    (format "post-%d-%d-%d"
            (cdr (assoc :year timestamp))
            (cdr (assoc :month timestamp))
            (cdr (assoc :day timestamp)))))

(declaim (inline fmb:post-hash))
(defun fmb:post-hash (post)
  (reduce #'+ (fmb:post-body post) :initial-value 0))

(defun fmb:initial-slug (post)
  (let ((slug (fmb:remove-non-url-chars
               (downcase (fmb:post-title post)))))
    (if (> (length slug) 0)
        slug
        (fmb:empty-post-slug post))))

(defun fmb:calc-post-slug (post)
  (let ((initial-slug (fmb:initial-slug post)))
                                        ; First, try to add the empty
                                        ; post slug. This limitates us
                                        ; to posts with the same title
                                        ; the very same day
    (when (gethash initial-slug *fmb:post-slug-hash*)
      (setf initial-slug
            (format "%s-%s" initial-slug (fmb:empty-post-slug post))))
                                        ; If still in the hash table,
                                        ; do a hash for all the
                                        ; characters in the post and
                                        ; add a byte hash. The
                                        ; probability of coincidence
                                        ; is rather low, so we'll stop
                                        ; here trying to find
                                        ; duplicates and will assume
                                        ; that there are not.  The
                                        ; real solution would have
                                        ; been to start by the end of
                                        ; the list of posts, to
                                        ; maintain stability of
                                        ; repeated post slug names and
                                        ; generate always the same
                                        ; substitution, but limiting
                                        ; to the date *and* the hash
                                        ; gives us a very huge chance
                                        ; of non-repetition and
                                        ; stability.
    (when (gethash initial-slug *fmb:post-slug-hash*)
      (setf initial-slug
            (format "%s-%s" initial-slug (fmb:post-hash post))))
                                        ; fill hash table of post
                                        ; slugs to avoid duplicates
    (setf (gethash initial-slug *fmb:post-slug-hash*) initial-slug)))

(defconst *fmb:month-names*
  '("january" "february" "march" "april" "may" "june" "july"
    "august" "september" "october" "november" "december"))

(defconst *fmb:month-symbols*
  '(:january :february :march :april
    :may :june :july :august :september
    :october :november :december))

(defconst *fmb:day-names*
  '("monday" "tuesday" "wednesday"
    "thursday" "friday" "saturday"
    "sunday"))

(declaim (inline fmb:month-name))
(defun fmb:month-name (n) ; 1-12
  (nth (1- n) *fmb:month-names*))

(defun fmb:post-date-time-string (pst)
  (declare (post pst))
  (let* ((post-time (fmb:post-timestamp pst))
         (month (cdr (assoc :month post-time))))
    (format "%s %d, %d"
            (downcase (if (numberp month)
                          (fmb:month-name month)
                        month))
            (cdr (assoc :day post-time))
            (cdr (assoc :year post-time)))))

(defun fmb:url-for-category (category-sym)
  (let ((category-name (downcase (symbol-name category-sym))))
    (format "<a href=\"category-%s.html\"
                 title=\"View all posts in %s\" rel=\"category tag\">%s</a>"
            category-name category-name category-name)))

(defun post-categories-fmb:links (pst)
  (declare (post pst))
  (mapconcat #'(lambda (c) (format "%s" c))
             (mapcar #'fmb:url-for-category (post-categories pst))
             ", "))

(declaim (inline fmb:post-url))
(defun fmb:post-url (pst)
  (declare (post pst))
  (concat *fmb:absolute-url* "/" (post-slug pst) ".html"))

(declaim (inline fmb:post-internet-url))
(defun fmb:post-internet-url (pst)
  (declare (post pst))
  (concat *fmb:blog-internet-url* "/" (post-slug pst) ".html"))

(declaim (inline fmb:archive-file))
(defun fmb:archive-file (archive-cons)
  (format "archives-%s-%s"
          (fmb:month-name (car archive-cons))
          (cdr archive-cons)))

(declaim (inline fmb:fmb:archive-file-url))
(defun fmb:fmb:archive-file-url (archive-cons)
  (fmb:archive-file archive-cons))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *fmb:archive-li* nil)
(defun fmb:archive-li-s ()
  (if *fmb:archive-li* ; already calculated?
      *fmb:archive-li*
      (error "Archive-li not calculated!")))
(defun fmb:generate-archive-li ()
  (setf *fmb:archive-li*
        (apply #'concat
               (mapcar
                #'(lambda (archive-cons)
                    (h:li (h:a `((:href . ,(concat
                                        (fmb:fmb:archive-file-url archive-cons)
                                        ".html")))
                           (format "%s %s"
                                   (fmb:month-name (car archive-cons))
                                   (cdr archive-cons)))))
                *fmb:months-years*))))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *fmb:fmb:all-categories* nil) ; list of all the categories of all posts
(defun fmb:all-categories ()
  (if *fmb:fmb:all-categories*
      *fmb:fmb:all-categories*
      (error "Categories not calculated")))
(defun fmb:generate-fmb:all-categories ()
  (setf *fmb:fmb:all-categories*
        (reduce #'(lambda (cat-set post)
                    (union cat-set (categories post)))
                *fmb:posts* :initial-value nil)))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *fmb:fmb:posts-for-category* (make-hash-table))
(defun fmb:classify-posts-by-category ()
  (map nil #'(lambda (category)
               (let* ((posts
                       (remove-if #'(lambda (post)
                                      (not (member category (categories post))))
                                  *fmb:posts*))
                      (l (length posts)))
                 (setf (gethash category *fmb:fmb:posts-for-category*)
                       (cons l posts))))
       (fmb:all-categories)))

(defun fmb:posts-for-category (category)
  (cdr (gethash category *fmb:fmb:posts-for-category*)))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *fmb:categories-fmb:links* nil)
(defun categories-fmb:links ()
  (if *fmb:categories-fmb:links*
      *fmb:categories-fmb:links*
      (error "Categories fmb:links not calculated.")))
(defun generate-categories-fmb:links ()
  (setf
   *fmb:categories-fmb:links*
   (multiple-value-bind (max-n-posts min-n-posts)
       (loop for c being the hash-values in *fmb:fmb:posts-for-category*
          maximizing (car c) into max
          minimizing (car c) into min
          finally (return (values max min)))
     (apply #'concat
            (loop for k being the hash-keys in *fmb:fmb:posts-for-category*
               using (hash-value v)
               collect (format "<a href=\"category-%s.html\"
                             title=\"%d topic%s\" rel=\"category tag\"
                             style=\"font-size: %dpx;\">%s</a> "
                               (downcase k)
                               (car v)
                               (if (> (car v) 1) "s" "")
                               (+ 9 (round
                                     (/ (- (car v) min-n-posts)
                                        (/ (- max-n-posts min-n-posts) 10))))
                               (downcase k)))))))

(declaim (inline fmb:cons-from-post-time))
(defun fmb:cons-from-post-time (post)
  (let* ((timestamp (timestamp post))
         (month (cdr (assoc :month timestamp)))
         (year (cdr (assoc :year timestamp))))
    (cons (if (numberp month)
              month
              (1+ (position month *fmb:month-symbols*)))
          year)))

(declaim (inline fmb:archive-dates-lessp))
(defun fmb:archive-dates-lessp (d1 d2)
  (or (< (cdr d1) (cdr d2))
      (and (= (cdr d1) (cdr d2))
           (< (car d1) (car d2)))))

(declaim (inline fmb:archive-dates-greaterp))
(defun fmb:archive-dates-greaterp (d1 d2)
  (or (> (cdr d1) (cdr d2))
      (and (= (cdr d1) (cdr d2))
           (> (car d1) (car d2)))))

(defun fmb:generate-dates-for-archives ()
  (setf *fmb:months-years*
        (sort (delete-duplicates
               (loop for p in *fmb:posts* collect (fmb:cons-from-post-time p))
               :test #'equal)
              #'fmb:archive-dates-greaterp)))

;;; utility
(declaim (inline fmb:rfc-2822-date))
(defun fmb:rfc-2822-date (&optional time)
  (multiple-value-bind (second minute hour day month year day-of-week dst-p tz)
      (decode-time time)
    (setf tz (/ tz 3600))
    ;(when dst-p
    ;  (incf tz))
    (format "%s, %02d %s %4d %02d:%02d:%02d %+05d"
            (upcase-initials (subseq (nth day-of-week *fmb:day-names*) 0 3))
            day
            (upcase-initials (subseq (nth (1- month) *fmb:month-names*) 0 3))
            year
            hour
            minute
            second
            tz)))

(declaim (inline fmb:fmb:rfc-2822-date-for-post))
(defun fmb:fmb:rfc-2822-date-for-post (post)
  (let ((ts (post-timestamp post)))
    (fmb:rfc-2822-date (encode-time
                    0
                    (or (cdr (assoc :minutes ts)) 0)
                    (or (cdr (assoc :hours ts)) 0)
                    (cdr (assoc :day ts))
                    (let ((month2 (cdr (assoc :month ts))))
                      (if (numberp month2)
                          month2
                          (1+ (position month2 *fmb:month-symbols*))))
                    (cdr (assoc :year ts))))))

(declaim (inline fmb:angle-remover-closure))
(defun fmb:angle-remover-closure (body)
  (declare (optimize speed) (string body))
  (lexical-let ((not-in-angle t)
                (str-pos 0)
                (inner-body body)
                (str-len (length body)))
    (declare (fixnum str-pos str-len))
    #'(lambda ()
        (loop do
           (progn
             (when (>= str-pos str-len) (return nil))
             (let* ((c (aref inner-body str-pos))
                    (d (prog1
                           (cond ((and not-in-angle (not (= ?\< c)))
                                  c)
                                 ((and not-in-angle (= ?\< c))
                                  (setf not-in-angle nil))
                                 ((= ?\> c)
                                  (setf not-in-angle t)
                                  nil)
                                 (t nil))
                         (incf str-pos))))
               (when d (return d))))))))

(declaim (inline fmb:markup-clean))
(defun fmb:markup-clean (string)
  (let ((testp (fmb:angle-remover-closure string)))
    (coerce
     (loop for j = (funcall testp)
        when (not j) return v end
        collect j into v)
     'string)))

(defun fmb:calc-post-clean-body (post)
  (fmb:markup-clean (fmb:post-body post)))

(declaim (inline fmb:string-trim))
(defun fmb:string-trim (s)
  (let ((s1 (replace-regexp-in-string "[ \t]*$" "" s)))
    (replace-regexp-in-string "^[ \t]*" "" s1)))

(declaim (inline fmb:first-n-chars))
(defun fmb:first-n-chars (string n)
  (let ((s (fmb:string-trim string)))
    (condition-case nil
        (concat (substring s 0 (1- n)) "[...]")
      (error s)))) ; smaller

(defun fmb:calc-post-description (post)
  (fmb:first-n-chars (fmb:post-clean-body post) *fmb:rss-description-length*))

;; (defun fmb:replace-all (string part replacement &key (test #'char=))
;;   "Returns a new string in which all the occurences of the part
;; is replaced with replacement."
;;   (with-output-to-string (out)
;;     (loop with part-length = (length part)
;;        for old-pos = 0 then (+ pos part-length)
;;        for pos = (search part string
;;                          :start2 old-pos
;;                          :test test)
;;        do (write-string string out
;;                         :start old-pos
;;                         :end (or pos (length string)))
;;        when pos do (write-string replacement out)
;;        while pos)))

(declaim (inline fmb:link))
(defun fmb:link (url anchor &optional title rel)
  (h:a (cons (cons :href (replace-regexp-in-string "&" "&amp;" url))
             (cons (cons :rel (or rel "interesting fmb:link"))
                   (when title
                     (cons (cons :title title) nil))))
       anchor))

(declaim (inline fmb:blog-img))
(defun fmb:blog-img (img-file &optional &key alt &optional &key anchor &optional &key title &optional &key params)
  (let ((img-html
         (h:img
          (append
           (cons `(:src . ,(format "%s/%s" *fmb:img-internet-url* img-file))
                 (cons `(:alt . ,(if alt alt "Blog image.")) ; alt is obligatory
                       (when title `((:title . ,title)))))
           params))))
    (if anchor
        (h:a `((:href . ,anchor)) img-html)
        img-html)))

(defmacro __ (&rest rest)
  `(concat ,@rest))

(defun fmb:blog-file-name (filename)
  (concatenate 'string *fmb:base-url* "/" filename))

(defun fmb:new-post (title &rest args)
  "Generate a new post. Increment `*fmb:number-of-posts*', and add it to
  the `*fmb:posts*' list. Finally, for each post, stablish its post
  slug. This is done in the order they are read to be stable in the
  slug generation for posts with the same title, that are always
  assigned a different slug in the same order."
  (let ((post (apply #'make-fmb:post `(:title ,title ,@args))))
                                        ; Add one post
    (push post *fmb:posts*)
    (incf *fmb:number-of-posts*)

                                        ; Stablish slug. This is done
                                        ; in the correct order (older
                                        ; posts fist) to maintain
                                        ; stable slug names when
                                        ; repetitions exist
    ; TODO: see standard initialization for objects
    (setf (fmb:post-timestamp post) (fmb:calc-post-timestamp post))
    (setf (fmb:post-slug post) (fmb:calc-post-slug post))
    (setf (fmb:post-clean-body post) (fmb:calc-post-clean-body post))
    (setf (fmb:post-description post) (fmb:calc-post-description post))
    post))


;; loading of other files & process
(load-file "./posts-old.el")
(load-file "./posts.el")

(provide 'functional-mind-blog)

;;; --- end of file ---
