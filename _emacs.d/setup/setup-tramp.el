;;; Set up TRAMP - a remote file editing package

;; Load TRAMP
(require 'tramp)

;; Keep in mind known issues with zsh - see emacs wiki
(setq tramp-default-method "ssh")

;; File which keeps connection history
(setq tramp-persistency-file-name (expand-file-name "tramp" savefiles-dir))

(provide 'setup-tramp)
