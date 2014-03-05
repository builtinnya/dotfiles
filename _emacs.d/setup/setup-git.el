;;; Set up Git-related things.
;;; Use Magit as the primary git tool.

;; Use `gitconfig-mode' for editing the following dot-files.
(add-to-list 'auto-mode-alist '("_gitconfig\\'" . gitconfig-mode))

(provide 'setup-git)
