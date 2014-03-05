;;; Set up Popwin - popup window manager

(require 'popwin)

;; Manage Helm windows with Popwin
(push '("^\*helm[\- ].+\*$" :regexp t) popwin:special-display-config)

;; Enable popwin-mode
(popwin-mode +1)

(provide 'setup-popwin)
