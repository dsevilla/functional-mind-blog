(defpackage :dsevilla.blog-system (:use :asdf :cl))
(in-package :dsevilla.blog-system)

(defsystem blog
  :name "blog"
  :author "Diego Sevilla Ruiz <dsevilla@ditec.um.es"
  :version "1.0"
  :maintainer "Diego Sevilla Ruiz <dsevilla@ditec.um.es"
  :licence "BSD"
  :description "Blog generation functions."
  :long-description ""
  :components
  ((:file "packages")))
;   (:file "pathnames" :depends-on ("packages"))))
