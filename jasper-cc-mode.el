(setq-default tab-width 8)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

(add-hook 'c-mode-common-hook 'guess-style-guess-all)

(provide 'jasper-cc-mode)
