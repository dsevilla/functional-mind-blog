;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

;; recompile the package if not done so previously
(byte-recompile-directory "." 0) ; 0: compile those .el files without .elc too

;; loading of other files & process
(require 'cl)

(require 'fmb-html-opti)
(require 'fmb-theme)
(require 'fmb-blog)
(require 'fmb-posts-old)
(require 'fmb-posts)

;;; rss
(require 'fmb-rss2)

;;; pages
(require 'fmb-pages)

;;; links
(require 'fmb-links)

;;; search
(require 'fmb-search)

;;; process
(require 'fmb-process)

(fmb-do-process)

(provide 'functional-mind-blog)

