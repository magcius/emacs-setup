
(server-start)

; Make diff-buffer-with-file not useless
(setq diff-switches "-u")

(require 'guess-style)
(global-guess-style-info-mode 1)

;; Make emacs shut up about JS code :)
(put 'js2-basic-offset 'safe-local-variable 'integerp)

(require 'auto-complete)
(require 'auto-complete-config)

(provide 'jasper-misc)
