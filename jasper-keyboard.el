
(require 'magit)
(defun delete-whitespace (&optional backwards)
  "Ripped directly from delete-horizontal-space"
  (interactive "*P")
  (let ((orig-pos (point)))
    (delete-region
     orig-pos
     (progn
       (if backwards
         (skip-chars-backward " \t")
         (skip-chars-forward " \t"))
       (constrain-to-field nil orig-pos)))))

(global-set-key (kbd "C-c C-k")         'delete-whitespace)
(global-set-key (kbd "C-c #")           'comment-region)
(global-set-key (kbd "C-c C-#")         'uncomment-region)
(global-set-key (kbd "C-c >")           'indent-region)

(global-set-key (kbd "M-p")             'backward-paragraph)
(global-set-key (kbd "M-n")             'forward-paragraph)
(global-set-key (kbd "C-<down>")        'forward-paragraph)
(global-set-key (kbd "C-<up>")          'backward-paragraph)

(global-set-key (kbd "C-M-<backspace>") 'delete-indentation)
(global-set-key (kbd "C-c <tab>")       'align-regexp)

(global-set-key (kbd "C-x C-b")         'ibuffer)
(global-set-key (kbd "C-x g")           'magit-status)

(global-set-key (kbd "C-c b")           'display-buffer)

(global-set-key (kbd "C-c C-w")         'adhoc-snippet-create)
(global-set-key (kbd "C-c C-y")         'adhoc-snippet-insert)

(require 'smooth-scrolling)

; C-z on Linux freezes the entire window.
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

(provide 'jasper-keyboard)
