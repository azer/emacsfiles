(defconst +home-dir+ "~")
(defconst +emacs-dir+ (concat +home-dir+ "/.config/emacsfiles"))
(defconst +emacs-profiles-dir+ (concat +emacs-dir+ "/profiles"))
(defconst +emacs-lib-dir+ (concat +emacs-dir+ "/lib"))
(defconst +emacs-conf-dir+ (concat +emacs-dir+ "/conf"))
(defconst +emacs-tmp-dir+ (concat +emacs-dir+ "/tmp"))

(defun add-load-path (p)
  (add-to-list 'load-path (concat +emacs-dir+ "/" p)))

(defun add-lib-path (p)
  (add-to-list 'load-path (concat +emacs-lib-dir+ "/" p)))

(defun load-conf-file (f)
  (load-file (concat +emacs-conf-dir+ "/" f)))

(defun load-lib-file (f)
  (load-file (concat +emacs-lib-dir+ "/" f)))

(defun load-profile(p)
  (message (format "Loading profile: \"%s\"..." p))
  (load-file (concat +emacs-profiles-dir+ "/" p ".el")))

(add-load-path "")
(add-load-path "lib")

(load-profile "default")

(add-to-list 'command-switch-alist '("dev" . (lambda (n) (load-profile "dev"))))
(add-to-list 'command-switch-alist '("irc" . (lambda (n) (load-profile "irc"))))
(add-to-list 'command-switch-alist '("org" . (lambda (n) (load-profile "org"))))
(add-to-list 'command-switch-alist '("android" . (lambda (n) (load-profile "android"))))

