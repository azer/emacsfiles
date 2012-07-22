(add-lib-path "yasnippet")

(require 'yasnippet)
(yas/load-directory "~/.local/share/snippets")
(setq yas/snippet-dirs '("~/.local/share/snippets"))
(yas/global-mode 1)
(setq yas/trigger-key "M-SPC")

(eval-after-load 'js2-mode
  '(progn
     (define-key js2-mode-map (kbd "TAB") (lambda()
                                            (interactive)
                                            (let ((yas/fallback-behavior 'return-nil))
                                              (unless (yas/expand)
                                                (indent-for-tab-command)
                                                (if (looking-back "^\s*")
                                                    (back-to-indentation))))))))
