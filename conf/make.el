(setq make-params "")

(defun run-make-command ()
  "Run `make` command on working directory"
  (interactive)
  (let ((cmd (concat "make " make-params)))
    (message (concat "Running " cmd))
    (compile cmd))
  )

(defun set-make-params (params)
  "Set the parameters of make command"
  (interactive "sEnter parameters for make:")
  (message "Default make command set to 'make %s'" params)
  (setq make-params params)
)

(global-set-key (kbd "M-m") 'run-make-command)
(global-set-key (kbd "M-n") 'set-make-params)
