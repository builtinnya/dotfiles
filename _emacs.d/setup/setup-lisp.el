;;; Set up Lisp development environment

;; Emacs Lisp

;; The echo area displays documentation of function or variable at point
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

;; Clojure

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(setq nrepl-hide-special-buffers t)
(setq nrepl-buffer-name-show-port t)

(require 'clojure-mode)

;; Prettify lambdas
(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("(\\(fn\\>\\)"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "ƒ")
                               nil))))))

;; Fix indentation for some forms
(dolist (name '(save-view view-server-fns bulk-update))
  (put-clojure-indent name 1))

(provide 'setup-lisp)
