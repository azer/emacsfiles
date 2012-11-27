(defun run-make-command ()
  "Run `make` command on working directory"
  (interactive)
  (compile "make"))

(global-set-key (kbd "M-m") 'run-make-command)
