;;; Set up perspective - workspaces for Emacs

(require 'perspective)

(defmacro custom-persp (name &rest body)
  `(let ((initialize (not (gethash ,name perspectives-hash)))
         (current-perspective persp-curr))
     (persp-switch ,name)
     (when initialize ,@body)
     (setq persp-last current-perspective)))

(persp-mode)

(provide 'setup-perspective)
