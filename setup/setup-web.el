;;; Web development setup

;; Set up major mode for editing web templates
(require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Set up Emmet (ex-Zen-Coding)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'web-mode-hook  'emmet-mode) ;; Auto-start on web-mode
(add-hook 'css-mode-hook  'emmet-mode) ;; Enable Emmet's css abbreviation

(add-hook 'emmet-mode-hook
          (lambda ()
            ;; Set default indent depth of HTML abbreviation to 2
            (setq emmet-indentation 2)
            ;; Cursor will be positioned between first empty quotes
            (setq emmet-move-cursor-between-quotes t)))

;; Display color strings as colors
(add-hook 'css-mode-hook 'rainbow-mode)

(provide 'setup-web)
