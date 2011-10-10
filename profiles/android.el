(load-file "~/.config/emacsfiles/profiles/dev.el")

;; android-mode
(add-to-list 'load-path "~/opt/android-mode")
(require 'android-mode)
(setq android-mode-sdk-dir "~/opt/android")
