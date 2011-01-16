
(global-set-key "\C-c#"   'comment-region)
(global-set-key "\C-c>"   'indent-region)

(global-set-key [C-down] 'forward-paragraph)
(global-set-key [C-up]   'backward-paragraph)

(delete-selection-mode 1)

(require 'pager)
(global-set-key [C-M-backspace] 'delete-indentation)
(global-set-key "\C-v"   'pager-page-down)
(global-set-key "\M-v"   'pager-page-up)
(global-set-key [next]   'pager-page-down)
(global-set-key [prior]  'pager-page-up)

(require 'magit)
(global-set-key "\C-xg" 'magit-status)

(provide 'jasper-keyboard)
