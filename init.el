;;; GNU Emacs initialization entry point

;; Cask - Emacs dependency manager
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Pallet - Emacs package management tool
(require 'pallet)

(defvar init-root-dir (file-name-directory load-file-name)
  "The directory that contains all the initialization files.")

(defvar library-dir (expand-file-name "lib" init-root-dir)
  "The directory that contains internal libraries.")

(defvar setup-dir (expand-file-name "setup" init-root-dir)
  "The directory that contains emacs-lisp files for setup.")

(defvar preferences-dir (expand-file-name "preferences" init-root-dir)
  "The directory that contains preference files.")

(defvar snippet-dir (expand-file-name "snippets" init-root-dir)
  "The directory that contains snippets.")

(defvar vendor-dir (expand-file-name "vendor" init-root-dir)
  "The directory that contains third-party libraries.")

(defvar savefiles-dir (expand-file-name "savefiles" init-root-dir)
  "The directory that contains savefiles and other generated files.")

(defun add-vendor-to-load-path (vendor)
  "Add a third-party library directory to the load path."
  (add-to-list 'load-path (expand-file-name vendor vendor-dir)))

;; Add to load-path: internal libraries
(add-to-list 'load-path library-dir)

;; Load core library
;; (require 'my-core)

;; Add to load-path: setup files
(add-to-list 'load-path setup-dir)

;; Load common setup
(require 'setup-common)

;; Load OSX specific setup
(when (eq system-type 'darwin)
  (require 'setup-osx))

;; Set up user interface
(require 'setup-ui)

;; Set up perspective, workspaces for Emacs
;; (require 'setup-perspective)

;; Set up persp-mode, workspaces for Emacs
;; (require 'setup-persp-mode)

;; Set up workgroups2, a session manager for Emacs
(require 'setup-workgroups2)

;; Set up extra whitespace visualization/elimination
(require 'setup-whitespace)

;; Set up highlighting
(require 'setup-highlighting)

;; Set up parenthesis
(require 'setup-parens)

;; Set up on-the-fly spell checking
(require 'setup-flyspell)

;; Set up on-the-fly syntax checking
(require 'setup-flycheck)

;; Set up Semantic mode
(require 'setup-semantic)

;; Set up auto-completion
(require 'setup-auto-complete)

;; Set up template system
(require 'setup-yasnippet)

;; Set up Ido (Interactively DO things) mode.
;; Ido makes it a lot easier to switch between buffers and to open files.
(require 'setup-ido)

;; Set up Imenu mode - menus for accessing locations in documents
(require 'setup-imenu)

;; Set up Ag, the silver searcher
(require 'setup-ag)

;; Set up incremental completion and selection narrowing framework
(require 'setup-helm)

;; Set up Projectile - project manager
(require 'setup-projectile)

;; Set up Popwin - popup window manager
(require 'setup-popwin)

;; Set up TRAMP - remote file editing package.
;; TRAMP can be used for sudo access.
(require 'setup-tramp)

;; Set up markdown-mode
(require 'setup-markdown)

;; Set up multiple-cursors
(require 'setup-multiple-cursors)

;; Set up Java development environment
(require 'setup-java)

;; Set up JavaScript development environment
(require 'setup-js)

;; Set up web development environment
(require 'setup-web)

;; Set up Lisp development environment
(require 'setup-lisp)

;; Set up expand-region, semantic region expander
(require 'setup-expand-region)

;; Set up ace-jump-mode - jump to a word starting with a given char
(require 'setup-ace-jump)

;; Set up sh-mode
(require 'setup-sh)

;; Set up Git-related things
(require 'setup-git)

;; Set up Eshell, The Emacs Shell
(require 'setup-eshell)

;; Set up key-bindings
(require 'setup-key-bindings)
