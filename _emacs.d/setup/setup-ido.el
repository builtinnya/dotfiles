;;; Set up IDO (Interactively DO things) mode

(require 'ido)

;; Enable fuzzy search
(setq ido-enable-flex-matching t)

;; Always create a new buffer if no buffer matches
(setq ido-create-new-buffer 'always)

;; Use Ido for all buffer/file reading
(setq ido-everywhere t)

;; Use Ido (almost) everywhere
(require 'ido-ubiquitous)
(ido-ubiquitous-initialize)
(ido-ubiquitous-mode +1)

;; Save the ido state in `savefiles-dir'
(setq ido-save-directory-list-file
      (expand-file-name "ido.hist" savefiles-dir))

;; Guess whether text at point is a filename.
;; If found, use that as the starting point for filename selection.
(setq ido-use-filename-at-point 'guess)

;; Enable ido-mode
(ido-mode +1)

;; Use Smex to complete command in M-x
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'setup-ido)
