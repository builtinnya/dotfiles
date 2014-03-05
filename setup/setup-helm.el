;;; Set up Helm - incremental completion and selection narrowing framework

(require 'helm-config)

(defun my-helm-multi-occur-all-buffers ()
  "Multi-occur in all buffers backed by files."
  (interactive)
  (let ((thing (thing-at-point 'symbol t))
        (buffers (delq nil
                       (mapcar (lambda (b)
                                 (when (buffer-file-name b) (buffer-name b)))
                               (buffer-list)))))
    (if thing
        (helm-multi-occur-1 buffers thing)
      (helm-multi-occur buffers))))

;; Fetch my GitHub starred repositories and select one for browsing
(require 'helm-github-stars)
(setq helm-github-stars-username "builtinnya")
(setq helm-github-stars-cache-file
      (expand-file-name "hgs-cache" savefiles-dir))

(provide 'setup-helm)
