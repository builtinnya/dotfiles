;;; Highlighting-related setup

;; Highlight incremental search
(setq search-highlight t)

;; Highlight the region whenever the mark is active
(transient-mark-mode +1)

;; Highlight matching parens (global)
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)

;; Highlight indentation
;;   - disabled because it slows scrolling significantly
;; (require 'highlight-indentation)
;; (add-hook 'prog-mode-hook 'highlight-indentation-current-column-mode)

;; Highlight parentheses, brackets, braces according to their depth
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'setup-highlighting)
