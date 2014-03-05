;;; Set up multiple-cursors

;; Preferences for running commands with multiple cursors
(setq mc/list-file (expand-file-name "mc-lists.el" preferences-dir))

(require 'multiple-cursors)

(provide 'setup-multiple-cursors)
