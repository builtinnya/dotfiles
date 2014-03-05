;;; Set up perp-mode - workspaces for Emacs

(with-eval-after-load "persp-mode-autoloads"
  (setq wg-morph-on nil) ;; switch off animation of restoring window configuration
  (add-hook 'after-init-hook #'(lambda () (persp-mode 1))))

(provide 'setup-persp-mode)
