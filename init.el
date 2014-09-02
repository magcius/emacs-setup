
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   JASPER'S EMACS SETUP
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/magit")
(add-to-list 'load-path "~/.emacs.d/vendor/popup-el")
(add-to-list 'load-path "~/.emacs.d/vendor/auto-complete")
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")

(require 'package)

(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(defvar packages '(color-theme dtrt-indent expand-region gh gist git-commit-mode git-rebase-mode idomenu logito multiple-cursors mustache-mode pcache vala-mode))

(dolist (pkg packages)
  (if (not (package-installed-p pkg))
      (package-install pkg)))

(require 'jasper-visual)
(require 'jasper-clipboard)

(require 'jasper-auto-complete)

(require 'jasper-snippet)
(require 'jasper-python)
(require 'jasper-misc)
(require 'jasper-flymake)
(require 'jasper-keyboard)

(server-start)
