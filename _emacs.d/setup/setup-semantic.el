;;; Set up Semantic mode

;; Enable Semantic
(semantic-mode +1)

;; Set semantic database location
(setq semanticdb-default-save-directory
      (expand-file-name "semanticdb" savefiles-dir))

;; Any source code parsed by Semantic is cached in a database
(global-semanticdb-minor-mode)

(provide 'setup-semantic)
