(defvar my-keys-map (make-keymap) "my-keymap.")

(define-key my-keys-map (kbd "M-r") 'replace-regexp)
;;(define-key my-keys-map (kbd "C-c m") 'toggle-methods-bar)
;;(define-key my-keys-map (kbd "C-c <left>") 'ecb-goto-window-methods)
;;(define-key my-keys-map (kbd "C-c <right>") 'ecb-goto-window-edit1)

(define-minor-mode my-keys
  t " my-keys" 'my-keys-map)

(my-keys 1)

(global-set-key [up] nil)
(global-set-key [down] nil)
(global-set-key [left] nil)
(global-set-key [right] nil)
