
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(global-font-lock-mode 1)
(set-default 'use-file-dialog nil)

; Show column numbers
(column-number-mode 1)

(set-face-attribute 'default nil :height 112)

; Show matching parentheses
(show-paren-mode 1)
(set-default 'show-paren-style 'expression)
(set-default 'show-paren-delay 0)

; Line by line scrolling
(setq scroll-step 1)
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(scroll-bar-mode -1)

; Show newlines at end of file
(define-fringe-bitmap 'empty-line [0 0 #x3c #x3c #x3c #x3c 0 0])
(set-default 'indicate-empty-lines 'empty-line)

; Make C-x b bareable
(setq ido-everywhere 1)
(setq ido-enable-flex-matching 1)
(ido-mode t)

(setq custom-safe-themes '("7542572dc39040714407ab3217d10fa3e692140d5bbbbc16f08c04566ce7ee65" default))

(load-theme 'atom-one-dark)

(provide 'jasper-visual)
