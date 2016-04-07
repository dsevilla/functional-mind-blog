;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

;; recompile the package if not done so previously
(byte-recompile-directory "." 0) ; 0: compile those .el files without .elc too

;; loading of other files & process
(require 'cl)

(require 'fmb-html-opti)
(require 'fmb-theme)
(require 'fmb-blog)
(require 'fmb-static-blog)
(require 'fmb-org-posts)

;;; rss
(require 'fmb-rss2)

;;; pages
(require 'fmb-pages)

;;; search
(require 'fmb-search)

;;; process
(require 'fmb-process)

(setq geiser-active-implementations '(racket))

(fmb-do-process)

(provide 'functional-mind-blog)
