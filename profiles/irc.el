(load-file "~/.config/emacsfiles/profiles/default.el")
;; erc memory leak solution
(setq erc-truncate-buffer-on-save t)
(defvar erc-insert-post-hook)
(add-hook 'erc-insert-post-hook
	  'erc-truncate-buffer)
(setq erc-max-buffer-size 20000)

;; twitteringmode
(add-to-list 'load-path (format "%s/twittering-mode" +config-lib-dir+))
(require 'twittering-mode)
(setq twittering-use-master-password t)
