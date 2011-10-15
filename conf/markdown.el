(add-lib-path "markdown-mode")

(autoload 'markdown-mode "markdown-mode.el"
             "Major mode for editing Markdown files" t)
(setq auto-mode-alist
         (cons '("\\.txt" . markdown-mode) auto-mode-alist))
