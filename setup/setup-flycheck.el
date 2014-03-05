;;; Set up Flycheck, a modern on-the-fly syntax checking mode

;; Use Grizzl as the completion system
(add-vendor-to-load-path "grizzl")
(require 'grizzl)
(setq flycheck-completion-system 'grizzl)

;; Enable Flycheck in all buffers in which it can be used
;; (add-hook 'after-init-hook #'global-flycheck-mode)

;; Show errors in popup-tip.
;; Use `flycheck-tip-cycle' and `flycheck-tip-cycle-reverse' to move to errors.
;; (require 'flycheck-tip)

(provide 'setup-flycheck)
