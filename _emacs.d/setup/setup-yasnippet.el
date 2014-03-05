;;; Set up YASnippet - a template system for Emacs

(require 'yasnippet)

;; Set snippet directory
(setq yas-snippet-dirs (list snippet-dir))

;; Enable YASnippet globally
(yas-global-mode +1)

(provide 'setup-yasnippet)
