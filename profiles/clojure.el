(defconst +home-dir+ "/home/azer")

(add-to-list 'load-path "~/.config/emacsfiles/")

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
(require 'color-theme-azer)
(color-theme-azer)


;; key bindings
(global-set-key [up] nil)
(global-set-key [down] nil)
(global-set-key [left] nil)
(global-set-key [right] nil)

;; extensions

;;;; ido mode
(require 'ido)
(ido-mode t)

;;;; line numbers
(require 'lineno)
(global-set-key (kbd "C-x l") 'lineno-minor-mode)

;;;; yasnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.config/emacsfiles/snippets")

;; clojure-mode
(add-to-list 'load-path "~/opt/clojure-mode")
(require 'clojure-mode)

;; paredit
(add-to-list 'load-path "~/opt/paredit")
(require 'paredit)

;; slime
(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl)) 
  (defun paredit-mode-enable () (paredit-mode 1)) 
  (add-hook 'slime-mode-hook 'paredit-mode-enable)  
  (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)
  (setq slime-protocol-version 'ignore)))

(add-to-list 'load-path "~/opt/slime")
(require 'slime)
(slime-setup)


