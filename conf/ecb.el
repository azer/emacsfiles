(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el") ;; FIXME
(add-lib-path "ecb")

(require 'ecb)
;;(require 'ecb-autoloads)

(ecb-layout-define "my-ecb-layout" left nil
                   (ecb-set-methods-buffer)
                   (ecb-split-ver 0.75 t)
                   (other-window 1)
                   (ecb-set-history-buffer)
                   (select-window (next-window)))

(custom-set-variables
 '(ecb-options-version "2.40")
;; '(ecb-auto-activate t)
 '(ecb-layout-name "left6")
 '(ecb-tip-of-the-day nil)
 '(ecb-display-upgraded-options nil)
 '(ecb-windows-width 0.12))
