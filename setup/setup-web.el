;;; Web development setup

;; Set up major mode for editing web templates
(require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-content-types-alist '())

(add-hook 'web-mode-hook
          (lambda ()
            ;; Set indent offsets to 2
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-code-indent-offset 2)))

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

(add-hook 'css-mode-hook
          (lambda ()
            ;; Set default indent offset to 2
            (setq css-indent-offset 2)))

;; Display color strings as colors
(add-hook 'css-mode-hook 'rainbow-mode)

;; Setup for JS and JSX
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
(add-to-list 'web-mode-content-types-alist '("jsx" . "\\.js[x]?\\'"))

;; Setup for SCSS
(add-to-list 'auto-mode-alist '("\\.scss$" . web-mode))

;; Setup for JSON
(add-to-list 'auto-mode-alist '("\\.json$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jshintrc$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jscsrc$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eslintrc$" . web-mode))
(add-to-list 'web-mode-content-types-alist '("json" . "\\.jshintrc$"))
(add-to-list 'web-mode-content-types-alist '("json" . "\\.jscsrc$"))
(add-to-list 'web-mode-content-types-alist '("json" . "\\.eslintrc$"))

;; Setup for Embedded Ruby
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

;; Setup for Embedded Javascript
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))

(provide 'setup-web)
