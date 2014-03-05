;;; Set up sh-mode

;; Use `sh-mode' for editing the following dot-files.
(add-to-list 'auto-mode-alist '("/_zshrc\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("/_zshenv\\'" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))

(provide 'setup-sh)
