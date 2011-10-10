(load-file "~/.config/emacsfiles/profiles/default.el")
(show-paren-mode 1)

;;;; yasnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.local/share/snippets")

;; clojure-mode
(add-to-list 'load-path (format "%s/clojure-mode" +config-lib-dir+))
(require 'clojure-mode)

;; paredit
(require 'paredit)

;; slime
(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))
  (defun paredit-mode-enable () (paredit-mode 1))
  (defun clojure-mode-enable () (clojure-mode 1))
  (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)
  (add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)
  (setq slime-protocol-version 'ignore)
  (setq slime-lisp-implementations
    `((clojure ("clj-cmd") :init swank-clojure-init)
     ,@slime-lisp-implementations))))

(add-to-list 'load-path (format "%s/slime" +config-lib-dir+))
(require 'slime)
(slime-setup)

;; js2mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
