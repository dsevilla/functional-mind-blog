;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package dsevilla.blog)

(defmacro new-blog-link (url anchor &optional title rel)
  `(push (link ,url ,anchor ,title ,rel) *blog-links*))

(new-blog-link "http://code.google.com/p/emf4cpp/" "EMF4CPP")

(new-blog-link "http://www.catedrasaes.org" "Cátedra SAES de la
Universidad de Murcia")

(new-blog-link "http://neuromancer.inf.um.es/planetmurcia" "Planet Murcia")

(new-blog-link "http://neuromancer.inf.um.es/blog" "Previous Blog/Blog antiguo")

(new-blog-link "http://www.flickr.com/photos/dsevilla" "My Flickr!")

(new-blog-link "mailto:dsevilla@ditec.um.es" "e-mail/contact")

