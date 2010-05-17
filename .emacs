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
(defun gtd()
  (interactive)
  (dolist (file +org-files+)
    (find-file file)))

(run-at-time "00:59" 3600 'org-save-all-org-buffers)

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

;; Resume clocking tasks when emacs is restarted
(org-clock-persistence-insinuate)
;;
;; Yes it's long... but more is better ;)
(setq org-clock-history-length 28)
;; Resume clocking task on clock-in if the clock is open
(setq org-clock-in-resume t)
;; Change task state to STARTED when clocking in
(setq org-clock-in-switch-to-state "STARTED")
;; Separate drawers for clocking and logs
(setq org-drawers (quote ("PROPERTIES" "LOGBOOK" "CLOCK")))
;; Save clock data in the CLOCK drawer and state changes and notes in the LOGBOOK drawer
(setq org-clock-into-drawer "CLOCK")
;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)
;; Don't clock out when moving task to a done state
(setq org-clock-out-when-done nil)
;; Save the running clock and all clock history when exiting Emacs, load it on startup
(setq org-clock-persist (quote history))
;; Disable auto clock resolution
(setq org-clock-auto-clock-resolution nil)

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

;; init yasnippet
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/emacsfiles/snippets")

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
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(js-auto-indent-flag nil)
 '(js-flat-functions nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
