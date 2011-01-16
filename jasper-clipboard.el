
(setq shift-select-mode t) ; Extend marked region with shift
(setq mouse-drag-copy-region nil)
(setq x-select-enable-primary nil)
(setq x-select-enable-clipboard t) ; Use X11 CLIPBOARD by default.

(setq select-active-regions t)
(global-set-key [mouse-2] 'mouse-yank-primary)

(provide 'jasper-clipboard)