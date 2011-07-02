
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(setq ropemacs-guess-project       t)
(setq ropemacs-separate-doc-buffer t)
(setq ropemacs-enable-autoimport   nil)

(require 'django-mode)
(require 'jinja)

(provide 'jasper-python)
