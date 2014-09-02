;; Set up Go development environment

;; Load go-mode.
;; See: http://dominik.honnef.co/posts/2013/03/writing_go_in_emacs/
(add-vendor-to-load-path "go-mode")
(require 'go-mode-load)

;; Set up go-mode
(add-hook 'go-mode-hook
          (lambda ()
            (setq c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)
            (local-set-key (kbd "M-.") 'godef-jump)
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c i") 'go-goto-imports)
            (local-set-key (kbd "C-c d") 'godoc)))

(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'setup-go)
