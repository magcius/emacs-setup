
; Make diff-buffer-with-file not useless
(setq diff-switches "-u")

;; Make emacs shut up about JS code :)
(put 'js2-basic-offset 'safe-local-variable 'integerp)
(put 'js-indent-level 'safe-local-variable 'integerp)
(put 'py-indent-offset 'safe-local-variable 'integerp)

(provide 'jasper-misc)
