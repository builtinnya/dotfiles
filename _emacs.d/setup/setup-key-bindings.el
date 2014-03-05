;;; Set up key-bindings

(when (eq system-type 'darwin)
  ;; Press command-return to toggle full-screen
  (global-set-key (kbd "<s-return>") 'osx-toggle-fullscreen))

;; Make it faster to move to an other window
(global-set-key (kbd "M-o") 'other-window)

;; Repeat the last command.
;; You can repeatedly press z after your first `repeat' call.
(global-set-key (kbd "C-x z") 'repeat)

;; Repeat and edit complex commands
(global-set-key (kbd "C-x M-:") 'repeat-complex-command)

;; Open recent files with ido completion
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

;; Run `ibuffer'
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Run `ansi-term'
(global-set-key (kbd "<f1>") 'ansi-term)

;; Shrink/enlarge window
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Do the silver search `ag'
(global-set-key (kbd "C-c a") 'ag)

;; Do the silver search on the current project
(global-set-key (kbd "s-f") 'ag-project)

;; Move to Flycheck errorss
(global-set-key (kbd "C-c C-n") 'flycheck-tip-cycle)
(global-set-key (kbd "C-c C-p") 'flycheck-tip-cycle-reverse)

;; Multiple cursors: add the next matching part
(global-set-key (kbd "s-d") 'mc/mark-next-like-this)

;; Multiple cursors: add all matching parts
(global-set-key (kbd "s-D") 'mc/mark-all-like-this)

;; Press Command-p for find in project
(global-set-key (kbd "s-p") 'helm-projectile)

;; List symbols by semantic or imenu
(global-set-key (kbd "s-i") 'helm-semantic-or-imenu)

;; Search all buffers backed by files
(global-set-key (kbd "s-s") 'my-helm-multi-occur-all-buffers)

;; Locate files from helm
(global-set-key (kbd "s-l") 'helm-locate)

;; Fetch my GitHub starred repositories
(global-set-key (kbd "C-c f") 'helm-github-stars-fetch)

;; Select my GitHub starred repository for browsing
(global-set-key (kbd "C-c h") 'helm-github-stars)

;; Expand region semantically
(global-set-key (kbd "C-^") 'er/expand-region)

;; Toggle line-number display
(global-set-key (kbd "C-c l") 'linum-mode)

;; Jump to a word starting with a given char
(global-set-key (kbd "C-0") 'ace-jump-mode)

;; Jump back to the original position
(global-set-key (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; Run Magit
(global-set-key (kbd "C-c m") 'magit-status)

(provide 'setup-key-bindings)
