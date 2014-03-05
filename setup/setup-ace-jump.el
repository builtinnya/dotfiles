;;; Set up ace-jump-mode - jump to a word starting with a given char

;; Auto-load ace-jump-mode
(autoload 'ace-jump-mode "ace-jump-mode"
  "Emacs quick move minor mode" t)

;; Auto-load a powerful jump back function
(autoload 'ace-jump-mode-pop-mark "ace-jump-mode"
  "Ace jump back:-)" t)

;; Sync ace-jump-mode mark ring and emacs mark ring
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

(provide 'setup-ace-jump)
