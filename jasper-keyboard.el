
(global-set-key (kbd "C-c #")   'comment-region)
(global-set-key (kbd "C-c C-#") 'uncomment-region)
(global-set-key (kbd "C-c >")   'indent-region)

(global-set-key [C-down] 'forward-paragraph)
(global-set-key [C-up]   'backward-paragraph)

(delete-selection-mode 1)

(global-set-key [C-M-backspace] 'delete-indentation)

(require 'magit)
(global-set-key "\C-xg" 'magit-status)

(require 'smooth-scrolling)

; C-z on Linux freezes the entire window.
(global-unset-key "\C-z")
(global-unset-key "\C-x\C-z")

(global-set-key "\M-p" 'backward-paragraph)
(global-set-key "\M-n" 'forward-paragraph)

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

(global-set-key "\C-c\C-k" 'delete-whitespace)

(provide 'jasper-keyboard)
