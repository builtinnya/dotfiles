;;; OSX specific setup

;; Enable sRGB
(setq ns-use-srgb-colorspace t)

;; On OSX Emacs doesn't use the shell PATH if it's not started from
;; the shell. Let's fix that:
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(defun copy-from-osx ()
  "Read text from clipboard on OSX."
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  "Send text to clipboard on OSX."
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

;; Text put in kill ring is also available from OSX clipboard
(setq interprogram-cut-function 'paste-to-osx)

;; Text put in OSX clipboard is also available from Emacs
(setq interprogram-paste-function 'copy-from-osx)

(defun osx-toggle-fullscreen ()
  "Toggle full screen on OSX."
  (interactive)
  (set-frame-parameter
   nil 'fullscreen
   (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(provide 'setup-osx)
