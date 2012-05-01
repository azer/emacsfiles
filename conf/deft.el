(add-lib-path "deft")
(require 'deft)
(setq deft-extension "md")
(setq deft-directory "~/projects/docs.kodfabrik.com")
(setq deft-text-mode 'markdown-mode)

(defun deft-start-and-refresh ()
  (interactive)
  (deft)
  (deft-refresh))

(global-set-key [f8] 'deft-start-and-refresh)
