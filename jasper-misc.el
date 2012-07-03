
(setq-default tab-width 8)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

; Make diff-buffer-with-file not useless
(setq diff-switches "-u")

;; Make emacs shut up about JS code :)
(put 'js2-basic-offset 'safe-local-variable 'integerp)
(put 'js-indent-level 'safe-local-variable 'integerp)
(put 'py-indent-offset 'safe-local-variable 'integerp)

;; These don't have autoloads.
(require 'mustache-mode)
(require 'guess-offset)

(provide 'jasper-misc)
