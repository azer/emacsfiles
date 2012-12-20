(setq cmd "make")

(defun exec-command ()
  "Run given command on working directory"
  (interactive)
  (message (concat "Running " cmd))
  (compile cmd))

(defun set-command ()
  "Set the command to run"
  (interactive)
  (setq cmd (read-from-minibuffer "Set the command to run: " cmd)))

;;(global-set-key (kbd "M-m") 'run-make-command)
;;(global-set-key (kbd "M-n") 'set-make-params)

(global-set-key (kbd "M-g c") 'run-make-command)
(global-set-key (kbd "M-g n") 'set-make-params)
