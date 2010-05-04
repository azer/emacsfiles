(defconst +home-dir+ "/home/azer")
(defconst +org-files+ (list
		        (format "%s/ada/doc/org/gtd.org" +home-dir+)))

;; basic customization
(add-to-list 'load-path "~/.emacs.d/")
(setq make-backup-files nil) 
(setq auto-save-default nil)
;;(global-set-key [up] nil)
;;(global-set-key [down] nil)
(setq x-select-enable-clipboard t)

;; line numbers
(require 'lineno)

;; setup slime extension
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)


;; set keybindings
(global-set-key (kbd "C-x l") 'lineno-minor-mode)

;; hide bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; set org
(defun open-org()
  (interactive)
  (dolist (file +org-files+)
    (find-file file)))

(global-set-key (kbd "C-c C-o") 'open-org)

(setq org-agenda-files +org-files+)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)

;; visual customization
(set-default-font "Inconsolata:pixelsize=16:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")
(set-face-attribute 'default nil :height 100)

;; setup slime extension
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; set color theme
(require 'color-theme)
(color-theme-initialize)

(require 'color-theme-azer)
(color-theme-azer)

;; erc memory leak solution
(setq erc-truncate-buffer-on-save t)
(defvar erc-insert-post-hook)
(add-hook 'erc-insert-post-hook
	  'erc-truncate-buffer)
