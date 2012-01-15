;;; -*- mode: emacs-lisp; -*-
;;;
;;; $Header: /home/gene/library/website/docsrc/lh/RCS/html-opti.lisp,v 395.1 2008/04/20 17:25:45 gene Exp $
;;;
;;; Taken from http://cybertiggyr.com/lh/ (thanks to Gene Michael Stover).
;;; Some modifications by me (x-html, etc.) Adapted to emacs-lisp.

(eval-when-compile
  (require 'cl))

(defvar *h:html-translations* (make-hash-table :test #'eql))
(setf (gethash ?< *h:html-translations*) "&lt;"
      (gethash ?> *h:html-translations*) "&gt;"
      (gethash ?& *h:html-translations*) "&amp;"
      (gethash ?\" *h:html-translations*) "&quot;")

(defun h:encode (str)
  "Scan a string, converting the unsafe characters to entities
for HTML.  Return the new, safe, HTML string."
  (let ((html ""))
    (map nil #'(lambda (c)
		 (setq html (format "%s%s" html
				    (gethash c *h:html-translations* c))))
	 str)
    html))

(defun h:tag-begin (tag attribs)
  (apply #'concat
	 (append (list (format "<%s" (substring (symbol-name tag) 2))) ; h:
                 (mapcar #'(lambda (pair)
			     (concat (format " %s="
                                              (symbol-name (car pair)))
                                     (format "\"%s\"" (cdr pair))))
			 attribs)
		 (list ">"))))

(defun h:tag-end (tag)
  (format "</%s>" (substring (symbol-name tag) 2)))

(defun h:ensure-strings (lst)
  "Convert each element of LST to a string &
return a new list of the new strings."
  (mapcar #'(lambda (x)
	      (typecase x
			(string x)
			(symbol (symbol-name x)) ;remove the :
			(t (format "%s" x))))
          lst))


;; note: emacs-lisp seems to need &optional before optional &keys
(defmacro h:defhtml-region (name &optional &key prepend-newline
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
		      (list (h:tag-begin ',name attribs))
		      (h:ensure-strings lst)
		      (list (h:tag-end ',name))
		      ,(if append-newline
			   '(list "\n")
                           ()))))))


(h:defhtml-region h:a)
(h:defhtml-region h:blockquote :prepend-newline t :append-newline t)
(h:defhtml-region h:body :prepend-newline t)
(h:defhtml-region h:code)
(h:defhtml-region h:div :prepend-newline t)
(h:defhtml-region h:em)
(h:defhtml-region h:h1 :prepend-newline t)
(h:defhtml-region h:h2 :prepend-newline t)
(h:defhtml-region h:h3 :prepend-newline t)
(h:defhtml-region h:h4 :prepend-newline t)
(h:defhtml-region h:head :prepend-newline t)
(h:defhtml-region h:html :append-newline t)
(h:defhtml-region h:img)
(h:defhtml-region h:li :prepend-newline t)
(h:defhtml-region h:ol :prepend-newline t)
(h:defhtml-region h:p :prepend-newline t)
(h:defhtml-region h:pre :prepend-newline t)
(h:defhtml-region h:strong)
(h:defhtml-region h:table :prepend-newline t)
(h:defhtml-region h:title :prepend-newline t)
(h:defhtml-region h:td)
(h:defhtml-region h:th)
(h:defhtml-region h:tr :prepend-newline t)
(h:defhtml-region h:ul)

(defun h:br () "<br />")
(defun h:hr () "<hr />")

(provide 'fmb-html-opti)
;;; --- end of file ---
