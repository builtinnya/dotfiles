;;; Set up Java development environment

;; Use Google's style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

(defun setup-my-indent ()
  (c-set-offset 'arglist-intro '++)
  (c-set-offset 'arglist-cont '++)
  (c-set-offset 'arglist-cont-nonempty '++)
  (c-set-offset 'arglist-close '++))

(add-hook 'java-mode-hook 'setup-my-indent)

(add-hook 'c-initialization-hook
          (lambda ()
            (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)))

(provide 'setup-java)
