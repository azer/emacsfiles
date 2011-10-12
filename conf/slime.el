(add-lib-path "slime")
(require 'slime)

(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl slime-js))
  (defun paredit-mode-enable () (paredit-mode 1))
  (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)
  (add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)
  (setq slime-protocol-version 'ignore)))
(slime-setup '(slime-scratch slime-editing-commands))
