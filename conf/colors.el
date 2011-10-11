(require 'color-theme)
(color-theme-initialize)

(defun theme-1 ()
  (interactive)
  (color-theme-install
   '(theme-1
     (;;(background-color . "#050005")
      (foreground-color . "#FFFFFF")
      (background-mode . dark)
      (border-color . "#323232")
      (cursor-color . "#FFFFFF")
      (mouse-color . "#323232"))
     (mode-line ((t (:foreground "#ddd" :background "#111"))))
     (region ((t (:background "#323232"))))

     (font-lock-comment-face ((t (:foreground "#766655"))))
     (font-lock-constant-face ((t (:foreground "#A4E800"))))
     (font-lock-builtin-face ((t (:foreground "#653D96"))))
     (font-lock-function-name-face ((t (:foreground "#FF8424"))))
     (font-lock-variable-name-face ((t (:foreground "#C35362"))))
     (font-lock-keyword-face ((t (:foreground "#B63924"))))
     (font-lock-string-face ((t (:foreground "#CCD8E8"))))
     (font-lock-doc-string-face ((t (:foreground "#CCD8E8"))))
     (font-lock-type-face ((t (:foreground "#C1E400"))))
     )))

(theme-1)
