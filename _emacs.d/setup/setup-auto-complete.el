;;; Set up auto-completion

(require 'auto-complete-config)

;; Use dictionaries provided by the vendor
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/.cask/24.3.50.1/elpa/auto-complete-20130724.1750/dict")

;; Load default settings
(ac-config-default)

;; Ignore case
(setq ac-ignore-case nil)

;; Completion will never be started automatically
(setq ac-auto-start nil)

;; Auto-completion starts by typing TAB
(setq ac-trigger-key "TAB")

;; Use C-p/C-n to select
(setq ac-use-menu-map t)

;; Popup appears faster (default: 0.8)
(setq ac-auto-show-menu 0.3)

;; Set sources for completion
(setq-default ac-sources
              '(ac-source-filename
                ac-source-files-in-current-dir
                ac-source-yasnippet
                ac-source-abbrev
                ac-source-words-in-same-mode-buffers
                ac-source-dictionary))

;; Completion history file
(setq ac-comphist-file (expand-file-name "ac-comphist.dat" savefiles-dir))

;; Avoid the problem that Flyspell disables auto-completion
(ac-flyspell-workaround)

(provide 'setup-auto-complete)
