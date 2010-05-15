(defconst +home-dir+ "/home/azer")
(defconst +org-files+ (list
		        (format "%s/ada/doc/org/gtd.org" +home-dir+)))

;; basic customization
(add-to-list 'load-path "~/emacsfiles/")
(setq make-backup-files nil) 
(setq auto-save-default nil)
;;(global-set-key [up] nil)
;;(global-set-key [down] nil)
(setq x-select-enable-clipboard t)
;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
(setq js-indent-level 2)

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

;; configure org
(defun open-org()
  (interactive)
  (dolist (file +org-files+)
    (find-file file)))

(global-set-key (kbd "C-c C-o") 'open-org)

(setq org-agenda-files +org-files+)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)
(setq org-use-fast-todo-selection t)

(setq org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)")
 (sequence "WAITING(w@/!)" "SOMEDAY(S!)" "OPEN(O@)" "|" "CANCELLED(c@/!)")
 (sequence "QUOTE(q!)" "QUOTED(Q!)" "|" "APPROVED(A@)" "EXPIRED(E@)" "REJECTED(R@)"))))

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

;; update agenda file after changes to org files
(defun th-org-mode-init ()
  (add-hook 'after-save-hook 'th-org-update-agenda-file t t))

(add-hook 'org-mode-hook 'th-org-mode-init)

;; that's the export function
(defun th-org-update-agenda-file (&optional force)
  (interactive)
  (save-excursion
    (save-window-excursion
      (let ((file "/tmp/org-agenda.txt"))
        (org-agenda-list)
        (org-write-agenda file)))))

;; do it once at startup
(th-org-update-agenda-file t)

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
