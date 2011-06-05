
(server-start)

; Make diff-buffer-with-file not useless
(setq diff-switches "-u")

(require 'guess-style)
(global-guess-style-info-mode 1)

(require 'auto-complete)
(require 'auto-complete-config)

(provide 'jasper-misc)
