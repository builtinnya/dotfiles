;;; Set up Ag, the silver searcher

(require 'ag)

;; Highlight current search term in results
(setq ag-highlight-search t)

;; Reuse the existing search results buffer
(setq ag-reuse-buffers t)

(provide 'setup-ag)
