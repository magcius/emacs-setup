
(require 'flymake)

(defadvice dont-check-_flymake (around flymake-can-syntax-check-file activate)
  ;; Don't check "_flymake" files, so that we end up with "_flymake_flymake"
  ;; files, etc.
  (let ((oldbuf (current-buffer))
        (file-name (ad-get-argument 0)))
    (and
     (string-match "_flymake" file-name)
     (file-exists-p (replace-regexp-in-string "_flymake" "" file-name))
     (save-current-buffer
       (string-equal
        (mapcar buffer-string 
              '((find-file-noselect file-name)
                oldbuf))))
     ad-do-it)))

;; Configure flymake for python
(defun flymake-pylint-init ()
  (interactive)
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
					 'flymake-create-temp-inplace))
		 (local-file (file-relative-name
					  temp-file
					  (file-name-directory buffer-file-name))))
	(list "epylint" (list local-file))))

(add-to-list 'flymake-allowed-file-name-masks
			 '("\\.py\\'" flymake-pylint-init))

;; Set as a minor mode for python
(add-hook 'python-mode-hook 'flymake-mode)

(provide 'jasper-flymake)
