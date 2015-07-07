
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   JASPER'S EMACS SETUP
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")

(require 'package)

(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

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

(dolist (pkg packages)
  (catch 'refresh
    (if (not (package-installed-p pkg))
        (throw 'refresh)
      ))
  (package-refresh-contents))

(dolist (pkg packages)
  (if (not (package-installed-p pkg))
      (package-refresh-contents)
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
