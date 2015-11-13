;;; Set up Git-related things.
;;; Use Magit as the primary git tool.

;; Use `gitconfig-mode' for editing the following dot-files.
(add-to-list 'auto-mode-alist '("_gitconfig\\'" . gitconfig-mode))

;; Use git-flow extension for Magit
(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

(provide 'setup-git)
