
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   JASPER'S EMACS SETUP
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'package)

(package-initialize)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))

(defvar packages
  '(
    auto-complete
    color-theme
    dtrt-indent
    expand-region
    glsl-mode
    idomenu
    magit
    multiple-cursors
    vala-mode
    yasnippet
))

(defun install-missing ()
  (dolist (pkg packages)
    (if (not (package-installed-p pkg))
	(package-install pkg))))

(require 'jasper-visual)
(require 'jasper-clipboard)

(require 'jasper-auto-complete)

(require 'jasper-snippet)
(require 'jasper-misc)
(require 'jasper-flymake)
(require 'jasper-keyboard)

(server-start)
