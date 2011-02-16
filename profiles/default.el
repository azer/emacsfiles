(defconst +home-dir+ "/home/azer")
(defconst +org-files+ '((format "%s/docs/org/notes.org" +home-dir+)
                        (format "%s/docs/org/personal.org" +home-dir+)
                        (format "%s/docs/doc/org/work.org" +home-dir+)))

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

;;;; org-mode
(run-at-time "00:59" 3600 'org-save-all-org-buffers)
(global-set-key (kbd "C-c C-o") 'org-iswitchb)

;;(setq org-agenda-files +org-files+)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)
(setq org-use-fast-todo-selection t)

(setq org-todo-keyword-faces (quote (("TODO" :foreground "red" :weight bold)
 ("STARTED" :foreground "blue" :weight bold)
 ("DONE" :foreground "forest green" :weight bold)
 ("WAITING" :foreground "orange" :weight bold)
 ("SOMEDAY" :foreground "magenta" :weight bold)
 ("CANCELLED" :foreground "forest green" :weight bold)
 ("QUOTE" :foreground "red" :weight bold)
 ("QUOTED" :foreground "magenta" :weight bold)
 ("APPROVED" :foreground "forest green" :weight bold)
 ("EXPIRED" :foreground "forest green" :weight bold)
 ("REJECTED" :foreground "forest green" :weight bold)
 ("OPEN" :foreground "blue" :weight bold))))

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
