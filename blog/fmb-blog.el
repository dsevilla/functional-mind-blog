;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(eval-when-compile
  (require 'cl)
  (require 'fmb-html-opti))

(defstruct fmb-blog
  base-url  ; base-url, "fm", for instance
  (absolute-url (concat "/" base-url))
  site ; www site, http://neuromancer.inf.um.es
  (internet-url (concat site absolute-url))
  rss-name
  (internet-rss-url (concat internet-url "/" rss-name))
  img-url
  (internet-img-url (concat internet-url "/" img-url))
  title
  subtitle
  rss-description-length
  rss-posts-max
  posts-per-page
  (posts-for-category (make-hash-table))
  (slug-hash (make-hash-table :test #'equal))
  posts
  (number-of-posts 0)
  months-years
  links
  all-categories ; lists all categories of all posts
  categories-links
  archive-li
                                        ; search
  (words-to-post-num-hash (make-hash-table :test #'equal))
  (words-to-post-hash (make-hash-table :test #'equal))
                                        ; post content
  (content-hash (make-hash-table :test #'equal))
)

(defvar *the-blog*
  (make-fmb-blog
   :base-url "fm"
   :site "http://neuromancer.inf.um.es"
   :rss-name "rss2.xml"
   :img-url "img"
   :title "Functional Mind"
   :subtitle "an emacs-lisp and org-mode based blog by diego sevilla"
   :rss-description-length 400
   :rss-posts-max 100
   :posts-per-page 50
))

(defconst *fmb-month-names*
  '("january" "february" "march" "april" "may" "june" "july"
    "august" "september" "october" "november" "december"))

(defconst *fmb-month-symbols*
  (mapcar #'intern *fmb-month-names*))

(defconst *fmb-day-names*
  '("sunday" "monday" "tuesday" "wednesday"
    "thursday" "friday" "saturday"))

;;; Decode time
(defun fmb-get-actual-time-for-the-post ()
    "Return a new association list to be put into the timestamp field of a blog post."
    (multiple-value-bind (secs mins hours day month year)
        (decode-time)
      (declare (ignore secs))
      (list (cons :hours hours)
            (cons :minutes mins)
            (cons :day day)
            (cons :month month)
            (cons :year year))))

(defun fmb-time-list (&optional &key day
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
(defstruct fmb-post
  title
  body
  (description nil)
  clean-body
  (categories '(general))
  (slug nil)
  (body-format 'string)
  day
  month
  year
  (hours 0)
  (minutes 0)
  (timestamp '()))

(defun fmb-calc-post-timestamp (post)
  (fmb-time-list :day (fmb-post-day post)
                 :month
                 (let ((m (fmb-post-month post)))
                   (if (symbolp m)
                       (1+ (position m *fmb-month-symbols*))
                     m))
                 :year (fmb-post-year post)
                 :hours (fmb-post-hours post)
                 :minutes (fmb-post-minutes post)))


(defun fmb-remove-non-url-chars (string)
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

(defun fmb-empty-post-slug (post)
  (let ((timestamp (fmb-post-timestamp post)))
    (format "post-%d-%d-%d"
            (cdr (assoc :year timestamp))
            (cdr (assoc :month timestamp))
            (cdr (assoc :day timestamp)))))

(defun fmb-post-hash (post)
  (reduce #'+ (fmb-post-body post) :initial-value 0))

(defun fmb-initial-slug (post)
  (let ((slug (fmb-remove-non-url-chars
               (downcase (fmb-post-title post)))))
    (if (> (length slug) 0)
        slug
        (fmb-empty-post-slug post))))

(defun fmb-calc-post-slug (post)
  (let ((initial-slug (fmb-initial-slug post)))
                                        ; First, try to add the empty
                                        ; post slug. This limitates us
                                        ; to posts with the same title
                                        ; the very same day
    (when (gethash initial-slug (fmb-blog-slug-hash *the-blog*))
      (setf initial-slug
            (format "%s-%s" initial-slug (fmb-empty-post-slug post))))
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
    (when (gethash initial-slug (fmb-blog-slug-hash *the-blog*))
      (setf initial-slug
            (format "%s-%s" initial-slug (fmb-post-hash post))))
                                        ; fill hash table of post
                                        ; slugs to avoid duplicates
    (puthash initial-slug t (fmb-blog-slug-hash *the-blog*))))

(defun fmb-month-name (n) ; 1-12
  (nth (1- n) *fmb-month-names*))

(defun fmb-post-date-time-string (pst)
  (declare (post pst))
  (let* ((post-time (fmb-post-timestamp pst))
         (month (cdr (assoc :month post-time))))
    (format "%s %d, %d"
            (downcase (if (numberp month)
                          (fmb-month-name month)
                        month))
            (cdr (assoc :day post-time))
            (cdr (assoc :year post-time)))))

(defun fmb-url-for-category (category-sym)
  (let ((category-name (downcase (symbol-name category-sym))))
    (format "<a href=\"category-%s.html\"
                 title=\"View all posts in %s\" rel=\"category tag\">%s</a>"
            category-name category-name category-name)))

(defun fmb-post-categories-links (pst)
  (declare (post pst))
  (mapconcat #'(lambda (c) (format "%s" c))
             (mapcar #'fmb-url-for-category (fmb-post-categories pst))
             ", "))

(defun fmb-post-url (pst)
  (declare (post pst))
  (concat (fmb-blog-absolute-url *the-blog*) "/" (fmb-post-slug pst) ".html"))

(defun fmb-post-internet-url (pst)
  (declare (post pst))
  (concat (fmb-blog-internet-url *the-blog*) "/" (fmb-post-slug pst) ".html"))

(defun fmb-archive-file (archive-cons)
  (format "archives-%s-%s"
          (fmb-month-name (car archive-cons))
          (cdr archive-cons)))

(defun fmb-archive-file-url (archive-cons)
  (fmb-archive-file archive-cons))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defun fmb-archive-li-s ()
  (or (fmb-blog-archive-li *the-blog*) ; already calculated?
      (error "Archive-li not calculated!")))
(defun fmb-generate-archive-li ()
  (setf (fmb-blog-archive-li *the-blog*)
        (mapconcat
         #'(lambda (archive-cons)
             (h:li (h:a `((href . ,(concat
                                    (fmb-archive-file-url archive-cons)
                                    ".html")))
                        (format "%s %s"
                                (fmb-month-name (car archive-cons))
                                (cdr archive-cons)))))
         (fmb-blog-months-years *the-blog*)
         "\n")))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defun fmb-all-categories ()
  (or (fmb-blog-all-categories *the-blog*)
      (error "Categories not calculated")))
(defun fmb-generate-all-categories ()
  (setf (fmb-blog-all-categories *the-blog*)
        (reduce #'(lambda (cat-set post)
                    (union cat-set (fmb-post-categories post)))
                (fmb-blog-posts *the-blog*) :initial-value nil)))

;;; TODO: Convert this in some nice memoizing thing
(defun fmb-classify-posts-by-category ()
  (map nil #'(lambda (category)
               (let* ((posts
                       (remove-if #'(lambda (post)
                                      (not (member category
                                                   (fmb-post-categories post))))
                                  (fmb-blog-posts *the-blog*)))
                      (l (length posts)))
                 (puthash category
                          (cons l posts)
                          (fmb-blog-posts-for-category *the-blog*))))
       (fmb-all-categories)))

(defun fmb-posts-for-category (category)
  (cdr (gethash category (fmb-blog-posts-for-category *the-blog*))))

;;; TODO: Convert this in some nice memoizing thing, and/or add it to
;;; a nice blog class
(defun fmb-categories-links ()
  (or (fmb-blog-categories-links *the-blog*)
      (error "Categories links not calculated.")))
(defun fmb-generate-categories-links ()
  (setf
   (fmb-blog-categories-links *the-blog*)
   (multiple-value-bind (max-n-posts min-n-posts)
       (loop for c being the hash-values in (fmb-blog-posts-for-category *the-blog*)
          maximizing (car c) into max
          minimizing (car c) into min
          finally (return (values max min)))
     (apply #'concat
            (loop for k being the hash-keys in (fmb-blog-posts-for-category *the-blog*)
               using (hash-value v)
               collect
               (let ((category (downcase (symbol-name k))))
                 (format "<a href=\"category-%s.html\"
                             title=\"%d topic%s\" rel=\"category tag\"
                             style=\"font-size: %dpx;\">%s</a> "
                               category
                               (car v)
                               (if (> (car v) 1) "s" "")
                               (+ 9 (round
                                     (/ (- (car v) min-n-posts)
                                        (/ (- max-n-posts min-n-posts) 10))))
                               category)))))))

(defun fmb-cons-from-post-time (post)
  (let* ((timestamp (fmb-post-timestamp post))
         (month (cdr (assoc :month timestamp)))
         (year (cdr (assoc :year timestamp))))
    (cons (if (numberp month)
              month
              (1+ (position month *fmb-month-symbols*)))
          year)))

(defun fmb-archive-dates-lessp (d1 d2)
  (or (< (cdr d1) (cdr d2))
      (and (= (cdr d1) (cdr d2))
           (< (car d1) (car d2)))))

(defun fmb-archive-dates-greaterp (d1 d2)
  (or (> (cdr d1) (cdr d2))
      (and (= (cdr d1) (cdr d2))
           (> (car d1) (car d2)))))

(defun fmb-generate-dates-for-archives ()
  (setf (fmb-blog-months-years *the-blog*)
        (sort (delete-duplicates
               (loop for p in (fmb-blog-posts *the-blog*)
                     collect (fmb-cons-from-post-time p))
               :test #'equal)
              #'fmb-archive-dates-greaterp)))

;;; utility
(defun fmb-rfc-2822-date (&optional time)
  (multiple-value-bind (second minute hour day month year day-of-week dst-p tz)
      (decode-time time)
    (setf tz (/ tz 3600))
    ;(when dst-p
    ;  (incf tz))
    (format "%s, %02d %s %4d %02d:%02d:%02d %+05d"
            (upcase-initials (subseq (nth day-of-week *fmb-day-names*) 0 3))
            day
            (upcase-initials (subseq (nth (1- month) *fmb-month-names*) 0 3))
            year
            hour
            minute
            second
            tz)))

(defun fmb-rfc-2822-date-for-post (post)
  (let ((ts (fmb-post-timestamp post)))
    (fmb-rfc-2822-date
     (encode-time
      0
      (or (cdr (assoc :minutes ts)) 0)
      (or (cdr (assoc :hours ts)) 0)
      (cdr (assoc :day ts))
      (let ((month2 (cdr (assoc :month ts))))
        (if (numberp month2)
            month2
          (1+ (position month2 *fmb-month-symbols*))))
      (cdr (assoc :year ts))))))

(defun fmb-angle-remover-closure (body)
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

(defun fmb-markup-clean (string)
  (let ((testp (fmb-angle-remover-closure string)))
    (coerce
     (loop for j = (funcall testp)
        when (not j) return v end
        collect j into v)
     'string)))

(defun fmb-calc-post-clean-body (post)
  (fmb-markup-clean (fmb-post-body post)))

(defun fmb-string-trim (s)
  (let ((s1 (replace-regexp-in-string "[ \t]*$" "" s)))
    (replace-regexp-in-string "^[ \t]*" "" s1)))

(defun fmb-first-n-chars (string n)
  (let ((s (fmb-string-trim string)))
    (condition-case nil
        (concat (substring s 0 (1- n)) "[...]")
      (error s)))) ; smaller

(defun fmb-calc-post-description (post)
  (fmb-first-n-chars (fmb-post-clean-body post)
                     (fmb-blog-rss-description-length *the-blog*)))

(defun fmb-post-date-greaterp (p1 p2)
  (let* ((timestamp1 (fmb-post-timestamp p1))
         (year1 (cdr (assoc :year timestamp1)))
         (month1 (cdr (assoc :month timestamp1)))
         (day1 (cdr (assoc :day timestamp1)))
         (minutes1 (cdr (assoc :minutes timestamp1)))
         (hours1 (cdr (assoc :hours timestamp1)))
         ; 2
         (timestamp2 (fmb-post-timestamp p2))
         (year2 (cdr (assoc :year timestamp2)))
         (month2 (cdr (assoc :month timestamp2)))
         (day2 (cdr (assoc :day timestamp2)))
         (minutes2 (cdr (assoc :minutes timestamp2)))
         (hours2 (cdr (assoc :hours timestamp2))))
    (or (> year1 year2)
        (and (= year1 year2)
             (or (> month1 month2)
                 (and (= month1 month2)
                      (or (> day1 day2)
                          (and (= day1 day2)
                               (or (> hours1 hours2)
                                   (and (= hours1 hours2)
                                        (> minutes1 minutes2)))))))))))

(defun fmb-sort-posts-by-date ()
  (setf (fmb-blog-posts *the-blog*)
        (sort (fmb-blog-posts *the-blog*) #'fmb-post-date-greaterp)))

(defun fmb-link (url anchor &optional title rel)
  (h:a (cons (cons 'href (replace-regexp-in-string "&" "&amp;" url))
             (cons (cons 'rel (or rel "interesting link"))
                   (when title
                     (cons (cons 'title title) nil))))
       anchor))

(defun fmb-blog-img (img-file &optional &key alt
                              &optional &key anchor
                              &optional &key title
                              &optional &key params)
  (let ((img-html
         (h:img
          (append
           (cons `(src . ,(format "%s/%s"
                                   (fmb-blog-internet-img-url *the-blog*)
                                   img-file))
                 (cons `(alt . ,(or alt "Blog image.")) ; alt is obligatory
                       (when title `((title . ,title)))))
           params))))
    (if anchor
        (h:a `((href . ,anchor)) img-html)
        img-html)))

(defmacro __ (&rest rest)
  `(concat ,@rest))

(defun fmb-blog-file-name (filename)
  (concat (fmb-blog-base-url *the-blog*) "/" filename))

(defun fmb-new-post (title &rest args)
  "Generate a new post. Increment `*fmb-number-of-posts*', and
  add it to the `(fmb-blog-posts *the-blog*)' list. Finally, for
  each post, stablish its post slug. This is done in the order
  they are read to be stable in the slug generation for posts
  with the same title, that are always assigned a different slug
  in the same order."
  (let ((post (apply #'make-fmb-post `(:title ,title ,@args))))
                                        ; Add one post
    (push post (fmb-blog-posts *the-blog*))
    (incf (fmb-blog-number-of-posts *the-blog*))
                                        ; Stablish slug. This is done
                                        ; in the correct order (older
                                        ; posts fist) to maintain
                                        ; stable slug names when
                                        ; repetitions exist
    ; TODO: see standard initialization for objects
    (setf (fmb-post-timestamp post) (fmb-calc-post-timestamp post))
    (setf (fmb-post-slug post) (fmb-calc-post-slug post))
    (setf (fmb-post-clean-body post) (fmb-calc-post-clean-body post))
    (setf (fmb-post-description post) (fmb-calc-post-description post))
    post))


(provide 'fmb-blog)
;;; --- end of file ---
