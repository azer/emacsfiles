(global-set-key (kbd "C-c C-o") 'org-iswitchb)

;;(setq org-agenda-files +org-files+)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done 'time)
(setq org-use-fast-todo-selection t)

(setq org-todo-keywords
      '((sequence "TODO" "STARTED" "WAITING" "|" "DONE" "CANCELLED")))

(setq org-todo-keyword-faces
 '(("TODO" :foreground "red" :weight bold)
   ("STARTED" :foreground "light blue" :weight bold)
   ("DONE" :foreground "forest green" :weight bold)
   ("WAITING" :foreground "orange" :weight bold)
   ("CANCELLED" :foreground "forest green" :weight bold)
   ("QUOTE" :foreground "red" :weight bold)
   ("QUOTED" :foreground "magenta" :weight bold)))

(run-at-time "00:59" 3600 'org-save-all-org-buffers)
