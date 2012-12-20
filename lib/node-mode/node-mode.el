(defconst +node-mode-dir+ (file-name-directory load-file-name))

(defun node-repl ()
  (interactive)
  (pop-to-buffer (make-comint "Node Shell" (concat +node-mode-dir+ "repl.sh"))))

(provide 'node-mode)
