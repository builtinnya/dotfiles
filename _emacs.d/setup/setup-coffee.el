;;; Set up CoffeeScript development environment

(custom-set-variables '(coffee-tab-width 2))

;; Setup for Embedded CoffeeScript
(add-to-list 'auto-mode-alist '("\\.coffee.erb" . coffee-mode))

(provide 'setup-coffee)
