;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

;; (defpackage dsevilla.blog
;;   (:use "COMMON-LISP" "HTML"
;;         #+sbcl
;;         :sb-thread
;;   ) ;"COM.GIGAMONKEYS.PATHNAMES")
;;   )


;;; TODO: Maybe all these parameters should form a blog class

;;; Blog configuration constants

(eval-when-compile
  (require 'cl))

(defconst *base-url* "fm")

(defconst *absolute-url* (concat "/" *base-url*))

(defconst *blog-internet-url*
  (concat "http://neuromancer.inf.um.es" *absolute-url*))

(defconst *blog-internet-rss-url*
  (concat *blog-internet-url* "/rss2.xml"))

(defconst *base-img-url* "img")
(defconst *img-internet-url*
  (concat *blog-internet-url* "/" *base-img-url*))

(defconst *blog-title* "Functional Mind")
(defconst *blog-subtitle*
  "an emacs-lisp and org-mode based blog by diego sevilla")

(defconst *rss-description-length* 400
  "Length of the description string in the RSS.")

(defconst *rss-posts-max* 100
  "Number of max posts in the RSS.")

(defconst *posts-per-page* 50
  "Number of posts per page.")

(defvar *post-slug-hash* (make-hash-table :test #'equal))

(defvar *posts* ()
  "List of posts. Will be populated with the entries.")

(defvar *number-of-posts* 0
  "This is used to speed up calculations, to avoid calculating the
  length of the *posts* list. Maybe other approaches could have been used.")

(defvar *months-years* ()
  "List of pairs (month . year) for the posts of this blog. This is
  needed as a variable because it is used twice. First to generate the
  pages themselves and then to generate the sidebar list.")

(defvar *blog-links* ()
  "List of links of this blog.")

;;; Decode time
(defun get-actual-time-for-the-post ()
    "Return a new association list to be put into the timestamp field of a blog post"
    (multiple-value-bind (secs mins hours day month year)
        (decode-time)
      (declare (ignore secs))
      (mapcar #'cons (list :hours :minutes :day :month :year)
              (list hours mins day month year))))

(defun time-list (&key day month year hours minutes)
  (or (and day month year)
      (error "day, month, and year must be supplied"))
  (mapcar #'cons (list :hours :minutes :day :month :year)
              (list (or hours 0) (or minutes 0) day month year)))

;;; http://roeim.net/vetle/docs/cl-webapp-intro/part-1/
(defstruct post
  title
  body
  (description nil)
  clean-body
  (categories '(:general))
  (slug nil)
  (body-format :string)
  (timestamp (get-actual-time-for-the-post)))


(declaim (inline remove-non-url-chars))
(defun remove-non-url-chars (string)
  (declare (optimize speed) (string string))
   (coerce
    (loop for c across string  ; that Spanish thing...
         for j = (cond
                   ((= ?\  c) ?\-)
                   ((or (and (>= c ?\a) (<= c ?\z))
                        (and (>= c ?\A) (<= c ?\Z))
                        (and (>= c ?\0) (<= c ?\9)))
                    c)
                   ((= ?\á c) ?\a)
                   ((= ?\é c) ?\e)
                   ((= ?\í c) ?\i)
                   ((= ?\ó c) ?\o)
                   ((= ?\ú c) ?\u)
                   ((= ?\ñ c) ?\n)
                   (t nil))
       when j collect j)
    'string))

(declaim (inline empty-post-slug))
(defun empty-post-slug (post)
  (let ((timestamp (post-timestamp post)))
    (format "post-%d-%d-%d"
            (cdr (assoc :year timestamp))
            (cdr (assoc :month timestamp))
            (cdr (assoc :day timestamp)))))

(declaim (inline post-hash))
(defun post-hash (post)
  (reduce #'+ (post-body post) :initial-value 0))

(defun initial-slug (post)
  (let ((slug (remove-non-url-chars
               (downcase (post-title post)))))
    (if (> (length slug) 0)
        slug
        (empty-post-slug post))))

(defun calculate-post-slug (post)
  (let ((initial-slug (initial-slug post)))
                                        ; First, try to add the empty
                                        ; post slug. This limitates us
                                        ; to posts with the same title
                                        ; the very same day
    (when (gethash initial-slug *post-slug-hash*)
      (setf initial-slug
            (format "%s-%s" initial-slug (empty-post-slug post))))
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
    (when (gethash initial-slug *post-slug-hash*)
      (setf initial-slug
            (format "%s-%s" initial-slug (post-hash post))))
                                        ; fill hash table of post
                                        ; slugs to avoid duplicates
    (setf (gethash initial-slug *post-slug-hash*) initial-slug)))

(defconst *month-names*
  '("january" "february" "march" "april" "may" "june" "july"
    "august" "september" "october" "november" "december"))

(defconst *month-symbols*
  '(:january :february :march :april
    :may :june :july :august :september
    :october :november :december))

(defconst *day-names*
  '("monday" "tuesday" "wednesday"
    "thursday" "friday" "saturday"
    "sunday"))

(declaim (inline month-name))
(defun month-name (n) ; month name 1-12.
  (nth (1- n)
       *month-names*))

(defun post-date-time-string (pst)
  (declare (post pst))
  (let* ((post-time (post-timestamp pst))
         (month (cdr (assoc :month post-time))))
    (format "%s %d, %d"
            (downcase (if (numberp month)
                          (month-name month)
                        month))
            (cdr (assoc :day post-time))
            (cdr (assoc :year post-time)))))

(defun url-for-category (category-sym)
  (let ((category-name (downcase (symbol-name category-sym))))
    (format "<a href=\"category-%s.html\"
                 title=\"View all posts in %s\" rel=\"category tag\">%s</a>"
            category-name category-name category-name)))

(defun post-categories-links (pst)
  (declare (post pst))
  (mapconcat #'(lambda (c) (format "%s" c))
             (mapcar #'url-for-category (post-categories pst))
             ", "))

(declaim (inline post-url))
(defun post-url (pst)
  (declare (post pst))
  (concat *absolute-url* "/" (post-slug pst) ".html"))

(declaim (inline post-internet-url))
(defun post-internet-url (pst)
  (declare (post pst))
  (concat *blog-internet-url* "/" (post-slug pst) ".html"))

(declaim (inline archive-file))
(defun archive-file (archive-cons)
  (format "archives-%s-%s"
          (month-name (car archive-cons))
          (cdr archive-cons)))

(declaim (inline archive-file-url))
(defun archive-file-url (archive-cons)
  (archive-file archive-cons))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *archive-li* nil)
(defun archive-li-s ()
  (if *archive-li* ; already calculated?
      *archive-li*
      (error "Archive-li not calculated!")))
(defun generate-archive-li ()
  (setf *archive-li*
        (apply #'concat
               (mapcar
                #'(lambda (archive-cons)
                    (li (a `((:href . ,(concat
                                        (archive-file-url archive-cons)
                                        ".html")))
                           (format "%s %s"
                                   (month-name (car archive-cons))
                                   (cdr archive-cons)))))
                *months-years*))))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *all-categories* nil) ; list of all the categories of all posts
(defun all-categories ()
  (if *all-categories*
      *all-categories*
      (error "Categories not calculated")))
(defun generate-all-categories ()
  (setf *all-categories*
        (reduce #'(lambda (cat-set post)
                    (union cat-set (categories post)))
                *posts* :initial-value nil)))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *posts-for-category* (make-hash-table))
(defun classify-posts-by-category ()
  (map nil #'(lambda (category)
               (let* ((posts
                       (remove-if #'(lambda (post)
                                      (not (member category (categories post))))
                                  *posts*))
                      (l (length posts)))
                 (setf (gethash category *posts-for-category*)
                       (cons l posts))))
       (all-categories)))

(defun posts-for-category (category)
  (cdr (gethash category *posts-for-category*)))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defvar *categories-links* nil)
(defun categories-links ()
  (if *categories-links*
      *categories-links*
      (error "Categories links not calculated.")))
(defun generate-categories-links ()
  (setf
   *categories-links*
   (multiple-value-bind (max-n-posts min-n-posts)
       (loop for c being the hash-values in *posts-for-category*
          maximizing (car c) into max
          minimizing (car c) into min
          finally (return (values max min)))
     (apply #'concat
            (loop for k being the hash-keys in *posts-for-category*
               using (hash-value v)
               collect (format "<a href=\"category-%s.html\"
                             title=\"%s topic~:*~P\" rel=\"category tag\"
                             style=\"font-size: ~Apx;\">~3:*~A</a> "
                               (downcase k)
                               (car v)
                               (+ 9 (round
                                     (/ (- (car v) min-n-posts)
                                        (/ (- max-n-posts min-n-posts) 10))))))))))

(declaim (inline cons-from-post-time))
(defun cons-from-post-time (post)
  (let* ((timestamp (timestamp post))
         (month (cdr (assoc :month timestamp)))
         (year (cdr (assoc :year timestamp))))
    (cons (if (numberp month)
              month
              (1+ (position month *month-symbols*)))
          year)))

(declaim (inline archive-dates-lessp))
(defun archive-dates-lessp (d1 d2)
  (or (< (cdr d1) (cdr d2))
      (and (= (cdr d1) (cdr d2))
           (< (car d1) (car d2)))))

(declaim (inline archive-dates-greaterp))
(defun archive-dates-greaterp (d1 d2)
  (or (> (cdr d1) (cdr d2))
      (and (= (cdr d1) (cdr d2))
           (> (car d1) (car d2)))))

(defun generate-dates-for-archives ()
  (setf *months-years*
        (sort (delete-duplicates
               (loop for p in *posts* collect (cons-from-post-time p))
               :test #'equal)
              #'archive-dates-greaterp)))

;;; utility
(declaim (inline rfc-2822-date))
(defun rfc-2822-date (&optional time)
  (multiple-value-bind (second minute hour date month year day-of-week dst-p tz)
      (if time
          (decode-universal-time time)
          (get-decoded-time))
    (setf tz (- tz))
    (when dst-p
      (incf tz))
    (format nil "~:(~A~), ~2,'0d ~:(~A~) ~D ~2,'0d:~2,'0d:~2,'0d ~A~4,'0d"
            (subseq (nth day-of-week *day-names*) 0 3)
            date
            (subseq (nth (1- month) *month-names*) 0 3)
            year
            hour
            minute
            second
            (if (>= tz 0) '+ '-)
            tz)))

(declaim (inline rfc-2822-date-for-post))
(defun rfc-2822-date-for-post (post)
  (let ((ts (timestamp post)))
    (rfc-2822-date (encode-universal-time
                    0
                    (or (cdr (assoc :minutes ts)) 0)
                    (or (cdr (assoc :hours ts)) 0)
                    (cdr (assoc :day ts))
                    (let ((month2 (cdr (assoc :month ts))))
                      (if (numberp month2)
                          month2
                          (1+ (position month2 *month-symbols*))))
                    (cdr (assoc :year ts))))))

(declaim (inline angle-remover-closure))
(defun angle-remover-closure (body)
  (declare (optimize speed) (string body))
  (let ((not-in-angle t)
        (str-pos 0)
        (str-len (length body)))
    (declare (fixnum str-pos str-len))
    #'(lambda ()
        (loop do
           (progn
             (when (>= str-pos str-len) (return nil))
             (let* ((c (char body str-pos))
                    (d (prog1
                           (cond ((and not-in-angle (not (char= #\< c)))
                                  c)
                                 ((and not-in-angle (char= #\< c))
                                  (setf not-in-angle nil))
                                 ((char= #\> c)
                                  (setf not-in-angle t)
                                  nil)
                                 (t nil))
                         (incf str-pos))))
               (when d (return d))))))))

(declaim (inline markup-clean))
(defun markup-clean (string)
  (let ((testp (angle-remover-closure string)))
    (coerce
     (loop for j = (funcall testp)
        when (not j) return v end
        collect j into v)
     'string)))

(defun calculate-post-clean-body (post)
  (markup-clean (post-body post)))

(declaim (inline string-trim))
(defun string-trim (s)
  (let ((s1 (replace-regexp-in-string "[ \t]*$" "" s)))
    (replace-regexp-in-string "^[ \t]*" "" s1)))

(declaim (inline first-n-chars))
(defun first-n-chars (string n)
  (let ((s (string-trim string)))
    (condition-case nil
        (concat (substring s 0 (1- n)) "[...]")
      (error s)))) ; smaller

(defun calculate-post-description (post)
  (first-n-chars (post-clean-body post) *rss-description-length*))

(defun replace-all (string part replacement &key (test #'char=))
  "Returns a new string in which all the occurences of the part
is replaced with replacement."
  (with-output-to-string (out)
    (loop with part-length = (length part)
       for old-pos = 0 then (+ pos part-length)
       for pos = (search part string
                         :start2 old-pos
                         :test test)
       do (write-string string out
                        :start old-pos
                        :end (or pos (length string)))
       when pos do (write-string replacement out)
       while pos)))

(declaim (inline link))
(defun link (url anchor &optional title rel)
  (a (cons (cons :href (replace-all url "&" "&amp;"))
           (cons (cons :rel (or rel "interesting link"))
                 (when title
                   (cons (cons :title title) nil))))
           anchor))

(declaim (inline blog-img))
(defun blog-img (img-file &key alt anchor title params)
  (let ((img-html
         (img
          (append
           (cons `(:src . ,(format nil "~A/~A" *img-internet-url* img-file))
                 (cons `(:alt . ,(if alt alt "Blog image.")) ; alt is obligatory
                       (when title `((:title . ,title)))))
           params))))
    (if anchor
        (a `((:href . ,anchor)) img-html)
        img-html)))

(defmacro __ (&rest rest)
  `(concatenate 'string ,@rest))

(defun blog-file-name (filename)
  (concatenate 'string *base-url* "/" filename))

(defun new-post (title &key body (body-format :string)
                         categories year month day hours minutes)
  "Generate a new post. Increment `*number-of-posts*', and add it to
  the `*posts*' list. Finally, for each post, stablish its post
  slug. This is done in the order they are read to be stable in the
  slug generation for posts with the same title, that are always
  assigned a different slug in the same order."
  (let ((post
         (apply
          #'make-instance 'post
          `(:title ,title
            :body-format ,body-format
            :body ,body
            ,@(when categories `(:categories ,categories))
            :timestamp
            ,(apply #'time-list
                    `(:day ,day
                           :month ,month
                           :year ,year
                           ,@(when hours `(:hours ,hours))
                           ,@(when minutes `(:minutes ,minutes))))))))
                                        ; Add one post
    (push post *posts*)
    (incf *number-of-posts*)

                                        ; Stablish slug. This is done
                                        ; in the correct order (older
                                        ; posts fist) to maintain
                                        ; stable slug names when
                                        ; repetitions exist
    ; TODO: see standard initialization for objects
    (setf (slug post) (calculate-post-slug post))
    (setf (post-clean-body post) (calculate-post-clean-body post))
    (setf (post-description post) (calculate-post-description post))
    post))


;;; --- end of file ---
