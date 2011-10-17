
(server-start)

; Make diff-buffer-with-file not useless
(setq diff-switches "-u")

(require 'guess-style)
(global-guess-style-info-mode 1)

;; Make emacs shut up about JS code :)
(put 'js2-basic-offset 'safe-local-variable 'integerp)
(put 'js-indent-level 'safe-local-variable 'integerp)
(put 'py-indent-offset 'safe-local-variable 'integerp)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(setq ac-quick-help-delay 0.1)
(setq ac-delay 0)
(setq ac-auto-show-menu 0)

(autoload 'vala-mode "vala-mode" "Major mode for editing Vala code." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))

(require 'gist)

(provide 'jasper-misc)
