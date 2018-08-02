;;; Set up workgroups2 - a session manager for Emacs

(require 'workgroups2)

;; autoload/autosave:
;; if you start Emacs as "emacs --daemon" - turn off autoloading of workgroups:
(setq wg-use-default-session-file nil)

;; Set the prefix key
(setq wg-prefix-key (kbd "C-z"))

;; Set the session file path
(setq wg-default-session-file (expand-file-name "workgroups" savefiles-dir))

;; Use faces in the mode-line display
(setq wg-mode-line-use-faces t)

(set-face-attribute 'wg-mode-line-face nil
                    :inherit 'font-lock-function-name-face)

(set-face-attribute 'wg-brace-face nil
                    :inherit 'font-lock-type-face)

(setq wg-mode-line-only-name nil)

(workgroups-mode +1)

;; Do not clutter mode line
(require 'diminish)
(diminish 'workgroups-mode)

(provide 'setup-workgroups2)
