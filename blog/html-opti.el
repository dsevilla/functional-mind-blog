;;; -*- mode: emacs-lisp; -*-
;;;
;;; $Header: /home/gene/library/website/docsrc/lh/RCS/html-opti.lisp,v 395.1 2008/04/20 17:25:45 gene Exp $
;;;
;;; Taken from http://cybertiggyr.com/lh/ (thanks to Gene Michael Stover).
;;; Some modifications by me (x-html, etc.) Adapted to emacs-lisp.

(eval-when-compile
  (require 'cl))

(defvar *html-translations* (make-hash-table :test #'eql))
(setf (gethash ?< *html-translations*) "&lt;"
      (gethash ?> *html-translations*) "&gt;"
      (gethash ?& *html-translations*) "&amp;"
      (gethash ?\" *html-translations*) "&quot;")

(defun encode (str)
  "Scan a string, converting the unsafe characters to entities
for HTML.  Return the new, safe, HTML string."
  (let ((html ""))
    (map nil #'(lambda (c)
		 (setq html (format "%s%s" html
				    (gethash c *html-translations* c))))
	 str)
    html))

(defun tag-begin (tag attribs)
  (apply #'concat
	 (append (list (downcase (format "<%s" tag)))
                 (mapcar #'(lambda (pair)
			     (concat (downcase (format " %s=" (car pair)))
                                     (format "\"%s\"" (cdr pair))))
			 attribs)
		 (list ">"))))

(defun tag-end (tag)
  (downcase (format "</%s>" tag)))

(defun ensure-strings (lst)
  "Convert each element of LST to a string &
return a new list of the new strings."
  (mapcar #'(lambda (x)
	      (typecase x
			(string x)
			(symbol (symbol-name x))
			(t (format "%s" x))))
          lst))


;; note: emacs-lisp seems to need &optional before optional &keys
(defmacro defhtml-region (name &optional &key prepend-newline
                               &optional &key append-newline)
  `(defun ,name (&rest args)
     (let ((attribs (and (consp (first args))
			 (first args)))
	   (lst (if (consp (first args))
		    (rest args)
                    args)))
       (apply #'concat
	      (append ,(if prepend-newline
                           '(list "\n")
                         ())
		      (list (tag-begin ',name attribs))
		      (ensure-strings lst)
		      (list (tag-end ',name))
		      ,(if append-newline
			   '(list "\n")
                           ()))))))


(defhtml-region a)
(defhtml-region blockquote :prepend-newline t :append-newline t)
(defhtml-region body :prepend-newline t)
(defhtml-region code)
(defhtml-region div :prepend-newline t)
(defhtml-region em)
(defhtml-region h1 :prepend-newline t)
(defhtml-region h2 :prepend-newline t)
(defhtml-region h3 :prepend-newline t)
(defhtml-region h4 :prepend-newline t)
(defhtml-region head :prepend-newline t)
(defhtml-region html :append-newline t)
(defhtml-region img)
(defhtml-region li :prepend-newline t)
(defhtml-region ol :prepend-newline t)
(defhtml-region p :prepend-newline t)
(defhtml-region pre :prepend-newline t)
(defhtml-region strong)
(defhtml-region table :prepend-newline t)
(defhtml-region title :prepend-newline t)
(defhtml-region td)
(defhtml-region th)
(defhtml-region tr :prepend-newline t)
(defhtml-region ul)

(defun br () "<br />")
(defun hr () "<hr />")

;;; --- end of file ---
