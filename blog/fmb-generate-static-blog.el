;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

;; loading of other files & process
(require 'cl)

(require 'fmb-html-opti)
(require 'fmb-blog)
(require 'fmb-posts-old)
(require 'fmb-posts)

(with-temp-file "fmb-static-blog.el"
  (insert "(eval-when-compile (require 'cl) (require 'fmb-blog))\n"
          "(setq *the-blog* "
          (with-output-to-string
            (prin1 *the-blog*))
          ")\n"
          "(provide 'fmb-static-blog)"))

(provide 'fmb-generate-static-blog)


