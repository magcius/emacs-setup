
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(setq ac-quick-help-delay 0.1)
(setq ac-delay 0)
(setq ac-auto-show-menu 0)
(setq ac-expand-on-auto-complete nil)
(setq ac-comphist-threshold 0.7)

(define-key ac-completing-map "\t" 'ac-complete)

(provide 'jasper-auto-complete)
