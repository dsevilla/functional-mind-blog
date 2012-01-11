;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

(defmacro fmb-new-blog-link (url anchor &optional title rel)
  `(push (fmb-link ,url ,anchor ,title ,rel) *fmb-blog-links*))

(fmb-new-blog-link "http://code.google.com/p/emf4cpp/" "EMF4CPP")

(fmb-new-blog-link "http://www.catedrasaes.org" "Cátedra SAES de la
Universidad de Murcia")

(fmb-new-blog-link "http://neuromancer.inf.um.es/planetmurcia" "Planet Murcia")

(fmb-new-blog-link "http://neuromancer.inf.um.es/blog" "Previous Blog/Blog antiguo")

(fmb-new-blog-link "http://www.flickr.com/photos/dsevilla" "My Flickr!")

(fmb-new-blog-link "http://www.twitter.com/diegosevilla" "My Twitter")

(fmb-new-blog-link "mailto:dsevilla@ditec.um.es" "e-mail/contact")

