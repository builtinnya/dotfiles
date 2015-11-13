;;; Set up JavaScript development environment

;; Use js2-mode for editing JavaScript files
(autoload 'js2-mode "js2-mode" nil t)
;; Do not use js2-mode and instead use web-mode to edit js files
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq js2-basic-offset 2
      js2-bounce-indent-p nil)

;; Add imenu support
(add-hook 'js2-mode-hook 'js2-imenu-extras-mode)

;; Use ac-js2 for auto-completion
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; Enable REPL for Node.js
(require 'nodejs-repl)

(provide 'setup-js)
