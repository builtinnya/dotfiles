;;; Common setup

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; Display continuous lines
(setq-default truncate-lines nil)

;; Highlight current line
(global-hl-line-mode +1)

;; Truncate even when screen is split into multiple windows
(setq-default truncate-partial-width-windows nil)

;; Do word-wrap when the number of characters exceeds the limit of the window.
;; Simple editing commands such as `C-a' are redefined to act on visual lines.
(global-visual-line-mode +1)

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Use y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Remove text in active region if inserting text
(delete-selection-mode +1)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode +1)

;; Save sessions for recovering
(setq auto-save-list-file-prefix
      (expand-file-name ".saves-"
                        (expand-file-name "auto-save-list" savefiles-dir)))

;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Meaningful names for buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; Rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; Don't muck with special buffers

;; Saveplace remembers your location in a file when saving files
(require 'saveplace)
(setq save-place-file (expand-file-name "saveplace" savefiles-dir))

;; Activate it for all buffers
(setq-default save-place t)

;; Savehist keeps track of some history
(require 'savehist)
(setq savehist-additional-variables
      ;; Search entries
      '(search ring regexp-search-ring)
      ;; Save every minute
      savehist-autosave-interval 60
      ;; Keep the home clean
      savehist-file (expand-file-name "savehist" savefiles-dir))
(savehist-mode +1)

;; Save recent files
(require 'recentf)
(setq recentf-save-file (expand-file-name "recentf" savefiles-dir)
      recentf-max-saved-items 50
      recentf-max-menu-items 15)
(recentf-mode +1)

(require 'ido)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

;; Bookmarks
(require 'bookmark)
(setq bookmark-default-file (expand-file-name "bookmarks" savefiles-dir)
      bookmark-save-flag 1)

;; URL
(require 'url)
(setq url-configuration-directory (expand-file-name "url" savefiles-dir))

;; Add newlines when the point is at the end of the buffer and hit `C-n'
(setq next-line-add-newlines t)

(provide 'setup-common)
