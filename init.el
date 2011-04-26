
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;   JASPER'S EMACS SETUP
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/magit")
(add-to-list 'load-path "~/.emacs.d/vendor/Pymacs")
(add-to-list 'load-path "~/.emacs.d/vendor/auto-complete")

(require 'jasper-visual)
(require 'jasper-clipboard)

(require 'jasper-cc-mode)
(require 'jasper-python)
(require 'jasper-misc)
(require 'jasper-flymake)
(require 'jasper-keyboard)
