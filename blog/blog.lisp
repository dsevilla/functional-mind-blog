;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package :cl-user)

(defpackage dsevilla.blog
  (:use "COMMON-LISP" "HTML"
        #+sbcl
        :sb-thread
  ) ;"COM.GIGAMONKEYS.PATHNAMES")
  )

(in-package dsevilla.blog)

;;; TODO: Maybe all these parameters should form a blog class

;;; Blog configuration constants

(defparameter *base-url* "fm")

(defparameter *absolute-url* (concatenate 'string "/" *base-url*))

(defparameter *blog-internet-url*
  (concatenate 'string
               "http://neuromancer.inf.um.es"
               *absolute-url*))

(defparameter *blog-internet-rss-url*
  (concatenate 'string
               *blog-internet-url* "/rss2.xml"))

(defparameter *base-img-url* "img")
(defparameter *img-internet-url*
  (concatenate 'string
               *blog-internet-url* "/" *base-img-url*))

(defparameter *blog-title* "Functional Mind")
(defparameter *blog-subtitle*
  "a common-lisp based blog by diego sevilla")

(defparameter *rss-description-length* 400
  "Length of the description string in the RSS.")

(defparameter *rss-posts-max* 100
  "Number of max posts in the RSS.")

(defparameter *posts-per-page* 50
  "Number of posts per page.")

(defparameter *post-slug-hash* (make-hash-table :test #'equal))

(defparameter *posts* ()
  "List of posts. Will be populated with the entries.")

(defparameter *number-of-posts* 0
  "This is used to speed up calculations, to avoid calculating the
  length of the *posts* list. Maybe other approaches could have been used.")

(defparameter *months-years* ()
  "List of pairs (month . year) for the posts of this blog. This is
  needed as a variable because it is used twice. First to generate the
  pages themselves and then to generate the sidebar list.")

(defparameter *blog-links* ()
  "List of links of this blog.")

;;; Decode time
(defun get-actual-time-for-the-post ()
    "Return a new association list to be put into the timestamp field of a blog post"
    (multiple-value-bind (secs mins hours day month year)
        (decode-universal-time (get-universal-time))
      (declare (ignore secs))
      (mapcar #'cons (list :hours :minutes :day :month :year)
              (list hours mins day month year))))

(defun time-list (&key day month year hours minutes)
  (or (and day month year)
      (error "day, month, and year must be supplied"))
  (mapcar #'cons (list :hours :minutes :day :month :year)
              (list (or hours 0) (or minutes 0) day month year)))

;;; http://roeim.net/vetle/docs/cl-webapp-intro/part-1/
(defclass post ()
  ((title :initarg :title
          :accessor post-title)
   (body :initarg :body
         :accessor post-body)
   (description :accessor post-description
                :initform nil)
   (clean-body :accessor post-clean-body)
   (categories :initarg :categories
               :accessor categories
               :initform (list :general))
   (slug :initarg :slug
              :accessor slug
              :initform '())
   (body-format :initarg :body-format
                :accessor body-format
                :initarg :string
                :documentation "A symbol specifying the format of the entry.
 By default :string, but can hold new future values such as :markdown" )
   (timestamp :initarg :timestamp
              :accessor timestamp
              :initform (get-actual-time-for-the-post)))
  (:documentation "The blog post class."))


(declaim (inline remove-non-url-chars))
(defun remove-non-url-chars (string)
  (declare (optimize speed) (string string))
   (coerce
    (loop for c across string  ; that Spanish thing...
         for j = (cond
                   ((char= #\Space c) #\-)
                   ((or (and (char>= c #\a) (char<= c #\z))
                        (and (char>= c #\A) (char<= c #\Z))
                        (and (char>= c #\0) (char<= c #\9)))
                    c)
                   ((char= #\á c) #\a)
                   ((char= #\é c) #\e)
                   ((char= #\í c) #\i)
                   ((char= #\ó c) #\o)
                   ((char= #\ú c) #\u)
                   ((char= #\ñ c) #\n)
                   (t nil))
       when j collect j)
    'string))

(declaim (inline empty-post-slug))
(defun empty-post-slug (post)
  (let ((timestamp (timestamp post)))
    (format nil "post-~A-~(~A~)-~A"
            (cdr (assoc :year timestamp))
            (cdr (assoc :month timestamp))
            (cdr (assoc :day timestamp)))))

(declaim (inline post-hash))
(defun post-hash (post)
  (reduce #'+ (post-body post) :key #'char-int :initial-value 0))

(defun initial-slug (post)
  (let ((slug (remove-non-url-chars
               (string-downcase (post-title post)))))
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
            (format nil "~A-~A" initial-slug (empty-post-slug post))))
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
            (format nil "~A-~A" initial-slug (post-hash post))))
                                        ; fill hash table of post
                                        ; slugs to avoid duplicates
    (setf (gethash initial-slug *post-slug-hash*) initial-slug)))

(defparameter *month-names*
  '("january" "february" "march" "april" "may" "june" "july"
    "august" "september" "october" "november" "december"))

(defparameter *month-symbols*
  '(:january :february :march :april
    :may :june :july :august :september
    :october :november :december))

(defparameter *day-names*
  '("monday" "tuesday" "wednesday"
    "thursday" "friday" "saturday"
    "sunday"))

(declaim (inline month-name))
(defun month-name (n) ; month name 1-12.
  (nth (1- n)
       *month-names*))

(defun post-date-time-string (pst)
  (declare (post pst))
  (let* ((post-time (timestamp pst))
         (month (cdr (assoc :month post-time))))
    (format nil "~(~A~) ~A, ~A"
            (if (numberp month)
                (month-name month)
                month)
            (cdr (assoc :day post-time))
            (cdr (assoc :year post-time)))))

(defun url-for-category (category-sym)
  (let ((category-name (string-downcase (symbol-name category-sym))))
    (format nil "<a href=\"category-~A.html\"
                 title=\"View all posts in ~:*~A\" rel=\"category tag\">~:*~A</a>"
            category-name)))

(defun post-categories-links (pst)
  (declare (post pst))
  (format nil "~{~A~^, ~}"
          (mapcar #'url-for-category (categories pst))))

(declaim (inline post-url))
(defun post-url (pst)
  (declare (post pst))
  (concatenate 'string *absolute-url* "/" (slug pst) ".html"))

(declaim (inline post-internet-url))
(defun post-internet-url (pst)
  (declare (post pst))
  (concatenate 'string *blog-internet-url* "/" (slug pst) ".html"))

(declaim (inline archive-file))
(defun archive-file (archive-cons)
  (format nil "archives-~A-~A"
          (month-name (car archive-cons))
          (cdr archive-cons)))

(declaim (inline archive-file-url))
(defun archive-file-url (archive-cons)
  (archive-file archive-cons))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defparameter *archive-li* nil)
(defun archive-li-s ()
  (if *archive-li* ; already calculated?
      *archive-li*
      (error "Archive-li not calculated!")))
(defun generate-archive-li ()
  (setf *archive-li*
        (apply #'concatenate 'string
               (mapcar
                #'(lambda (archive-cons)
                    (li (a `((:href . ,(concatenate
                                        'string
                                        (archive-file-url archive-cons)
                                        ".html")))
                           (format nil "~A ~A"
                                   (month-name (car archive-cons))
                                   (cdr archive-cons)))))
                *months-years*))))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defparameter *all-categories* nil) ; list of all the categories of all posts
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
(defparameter *posts-for-category* (make-hash-table))
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
(defparameter *categories-links* nil)
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
     (apply #'concatenate 'string
            (loop for k being the hash-keys in *posts-for-category*
               using (hash-value v)
               collect (format nil "<a href=\"category-~A.html\"
                             title=\"~A topic~:*~P\" rel=\"category tag\"
                             style=\"font-size: ~Apx;\">~3:*~A</a> "
                               (string-downcase k)
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

(declaim (inline first-n-chars))
(defun first-n-chars (string n)
  (if (> (length string) n)
      (concatenate 'string (string-trim " " (subseq string 0 n)) "[...]")
      string))

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
