
(require 'yasnippet)
(require 'glib)

(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets/")

(defvar adhoc-snippet-last nil)

(defun adhoc-snippet-create (begin end)
  (interactive "r")
  (let* ((text (concat
                (buffer-substring-no-properties begin end)
                ;; "$0" is required as an exit marker
                "$0")))
    (setq adhoc-snippet-last text)
    ;; a lot of crazy things break if we don't turn this on
    (yas-minor-mode 1)
    (yas-expand-snippet text begin end)))

(defun adhoc-snippet-insert ()
  (interactive)
  ;; a lot of crazy things break if we don't turn this on
  (yas-minor-mode 1)
  (yas-expand-snippet adhoc-snippet-last))

(provide 'jasper-snippet)
