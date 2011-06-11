(defconst +home-dir+ "/home/azer")
(defconst +org-files+ (list
		        (format "%s/docs/org/gtd.org" +home-dir+)))

;; basic customization
(add-to-list 'load-path "~/.config/emacsfiles/")
(setq make-backup-files nil) 
(setq auto-save-default nil)
(setq confirm-kill-emacs nil)
(setq split-width-threshold nil)

;; ido mode
(require 'ido)
(ido-mode t)

;; hide bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; visual customization
(set-default-font "Inconsolata:pixelsize=16:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")
(set-face-attribute 'default nil :height 100)

;; erc memory leak solution
(setq erc-truncate-buffer-on-save t)
(defvar erc-insert-post-hook)
(add-hook 'erc-insert-post-hook
	  'erc-truncate-buffer)
(setq erc-max-buffer-size 20000)

;; twitteringmode
(add-to-list 'load-path "~/.config/emacsfiles/twittering-mode")
(require 'twittering-mode)
(setq twittering-use-master-password t)