(defconst +home-dir+ "/home/azer")
(defconst +config-dir+ "/home/azer/.config/emacsfiles")
(defconst +config-lib-dir+ "/home/azer/.config/emacsfiles/lib")

(add-to-list 'load-path +config-dir+)
(add-to-list 'load-path +config-lib-dir+)

;; basic customizations
(defalias 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq confirm-kill-emacs nil)

;; gui
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-default-font "Inconsolata:pixelsize=16:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")
(set-face-attribute 'default nil :height 100)

(require 'color-theme)
(color-theme-initialize)
(require 'set-colors)
(set-colors)

;; key bindings
(global-set-key [up] nil)
(global-set-key [down] nil)
(global-set-key [left] nil)
(global-set-key [right] nil)

