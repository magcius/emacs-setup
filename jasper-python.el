
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(setq ropemacs-guess-project       t)
(setq ropemacs-separate-doc-buffer t)
(setq ropemacs-enable-autoimport   nil)

(require 'django-mode)
(require 'jinja)

(add-hook 'django-mode-hook 'ac-ropemacs-setup)
(add-to-list 'ac-modes 'django-mode)

(provide 'jasper-python)
