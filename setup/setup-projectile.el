;;; Set up Projectile - project manager

;; Set paths of cache file and bookmark file.
;; This must come before loading projectile, otherwise caches are cleared
;; every time Emacs restarts.
(setq projectile-cache-file
      (expand-file-name "projectile.cache" savefiles-dir))
(setq projectile-known-projects-file
      (expand-file-name "projectile-bookmarks.eld" savefiles-dir))

;; Load projectile
(require 'projectile)

;; Grizzl - A fuzzy-search utility for Emacs
(add-vendor-to-load-path "grizzl")
(require 'grizzl)

;; Set completion system
(setq projectile-completion-system 'grizzl)

;; Enable Projectile globally
(projectile-global-mode)

;; Enable caching unconditionally
(setq projectile-enable-caching t)

(provide 'setup-projectile)
