
(setq-default tab-width 8)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

(pending-delete-mode t)

; Make diff-buffer-with-file not useless
(setq diff-switches "-u")

;; Make emacs shut up about JS code :)
(put 'js2-basic-offset 'safe-local-variable 'integerp)
(put 'js-indent-level 'safe-local-variable 'integerp)
(put 'py-indent-offset 'safe-local-variable 'integerp)

(setq user-mail-address "jstpierre@mecheye.net")

(defun poauth ()
  (interactive)
  (let* ((command "git log --format=\"%an\" $(git describe --abbrev=0)..HEAD -- po | sort | uniq")
         (lines (process-lines "bash" "-c" command)))
    (dolist (line lines)
      (insert (concat "* " line "\n")))))

;; These don't have autoloads.
(require 'mustache-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(provide 'jasper-misc)

;; GLSL mode, not on marmalade for whatever reason.
(require 'glsl-mode)
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))
