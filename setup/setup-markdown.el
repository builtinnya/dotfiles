;;; Set up markdown-mode

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)

;; Use `markdown-mode' for editing files which have one of extensions below.
;; Note that there is no standard extension for markdown files.
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))

(provide 'setup-markdown)
