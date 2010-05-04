(defconst +home-dir+ "/home/azer")
(defconst +org-files+ (list
		        (format "%s/ada/doc/org/gtd.org" +home-dir+)
		       ))

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

;; emms keybindings
(global-set-key (kbd "C-c C-e") 'emms-playlist-mode-switch-buffer)
(global-set-key (kbd "C-c C-r") 'emms-add-directory-tree)
(global-set-key (kbd "C-x l") 'lineno-minor-mode)
(global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
(global-set-key (kbd "<XF86AudioStop>") 'emms-stop)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)

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

;; general customization
(setq make-backup-files nil) 
(setq auto-save-default nil)
(global-set-key [up] nil)
(global-set-key [down] nil)
(setq x-select-enable-clipboard t)

;; setup slime extension
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; setup emms
(add-to-list 'load-path "~/.emacs.d/emms/")
(require 'emms-setup)
(require 'emms-info-libtag)
(emms-devel)
(emms-default-players)
(emms-playlist-new)
(push 'emms-player-mpg321 emms-player-list)
(push 'emms-player-mplayer emms-player-list)
(push 'emms-player-mplayer-playlist emms-player-list)
(setq
 emms-info-asynchronously t
 later-do-interval 0.0001
 emms-info-functions '(emms-info-libtag)
 emms-source-file-default-directory "~/ada/misc/music/"
 emms-mode-line-format " %s "
 emms-show-format "NP: %s")

;; emms keybindings
(global-set-key (kbd "C-c C-e") 'emms-playlist-mode-switch-buffer)
(global-set-key (kbd "C-c C-r") 'emms-add-directory-tree)
(global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
(global-set-key (kbd "<XF86AudioStop>") 'emms-stop)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)

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
(defconst +home-dir+ "/home/azer")
(defconst +org-files+ (list
		       (format "%s/ada/doc/org/gtd.org" +home-dir+)))

;; general customization
(setq make-backup-files nil) 
(setq auto-save-default nil)
(global-set-key [up] nil)
(global-set-key [down] nil)
(setq x-select-enable-clipboard t)

;; setup slime extension
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; setup emms
(add-to-list 'load-path "~/.emacs.d/emms/")
(require 'emms-setup)
(require 'emms-info-libtag)
(emms-devel)
(emms-default-players)
(emms-playlist-new)
(push 'emms-player-mpg321 emms-player-list)
(push 'emms-player-mplayer emms-player-list)
(push 'emms-player-mplayer-playlist emms-player-list)
(setq
 emms-info-asynchronously t
 later-do-interval 0.0001
 emms-info-functions '(emms-info-libtag)
 emms-source-file-default-directory "~/ada/misc/music/"
 emms-mode-line-format " %s "
 emms-show-format "NP: %s")

;; emms keybindings
(global-set-key (kbd "C-c C-e") 'emms-playlist-mode-switch-buffer)
(global-set-key (kbd "C-c C-r") 'emms-add-directory-tree)
(global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
(global-set-key (kbd "<XF86AudioStop>") 'emms-stop)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)

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
(defconst +home-dir+ "/home/azer")
(defconst +org-files+ (list
		       (format "%s/ada/doc/org/gtd.org" +home-dir+)))

;; general customization
(setq make-backup-files nil) 
(setq auto-save-default nil)
(global-set-key [up] nil)
(global-set-key [down] nil)
(setq x-select-enable-clipboard t)

;; setup slime extension
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; setup emms
(add-to-list 'load-path "~/.emacs.d/emms/")
(require 'emms-setup)
(require 'emms-info-libtag)
(emms-devel)
(emms-default-players)
(emms-playlist-new)
(push 'emms-player-mpg321 emms-player-list)
(push 'emms-player-mplayer emms-player-list)
(push 'emms-player-mplayer-playlist emms-player-list)
(setq
 emms-info-asynchronously t
 later-do-interval 0.0001
 emms-info-functions '(emms-info-libtag)
 emms-source-file-default-directory "~/ada/misc/music/"
 emms-mode-line-format " %s "
 emms-show-format "NP: %s")

;; emms keybindings
(global-set-key (kbd "C-c C-e") 'emms-playlist-mode-switch-buffer)
(global-set-key (kbd "C-c C-r") 'emms-add-directory-tree)
(global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
(global-set-key (kbd "<XF86AudioStop>") 'emms-stop)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)

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

;; visual customization
(set-default-font "Inconsolata:pixelsize=16:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")
(set-face-attribute 'default nil :height 100)

;; setup slime extension
(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; set color 
(require 'color-theme)
(color-theme-initialize)
(color-theme-azer)

;; erc memory leak solution
(setq erc-truncate-buffer-on-save t)
(defvar erc-insert-post-hook)
(add-hook 'erc-insert-post-hook
	  'erc-truncate-buffer)
