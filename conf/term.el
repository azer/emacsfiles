(defun bash (buffer-name)
  "Start a terminal and rename buffer."
  (interactive "sgive me a name sir: ")
  (term "/bin/bash")
    (rename-buffer buffer-name t))
