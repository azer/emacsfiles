(defun zsh (buffer-name)
  "Start a terminal and rename buffer."
  (interactive "sTerminal Title: ")
  (term "/bin/zsh")
    (rename-buffer buffer-name t))

(define-key my-keys-map (kbd "M-z") 'zsh)
