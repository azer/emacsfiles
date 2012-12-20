(defun replace-in-current-line ()
  "Prompts search&replace for current line."
  (interactive)
  (end-of-line) ; move to end of line
  (set-mark (line-beginning-position))
  (replace-regexp))

;;(global-set-key (kbd "\M-b\\") 'replace-in-current-line)
