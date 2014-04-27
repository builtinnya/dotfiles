;; Basic setup for python-mode
(setq python-indent-offset 2)

;; Jedi - Python auto-completion package
;; Dependent Python packages: Jedi, epc, argparse
;; Install via `pip install package_name'
(add-hook 'python-mode-hook 'jedi:setup)

;; Use pylint with flymake
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (message "Invoking flymake-pylint-init...")
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "epylint" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))

(provide 'setup-python)
