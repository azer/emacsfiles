;; although emacs-w3m has bookmarking facility,
;; I prefer my own way to modularize my bookmarks.
;;
;; USAGE
;;
;; Createa a new bookmark:
;;   (new-bookmark "google" "google.com")
;;
;; Call the saved bookmark:
;;   (w3-google)

(defmacro new-bookmark (name url)
  (list 'defun (intern (format "w3-%s" name)) ()
        (list 'interactive)
        (list 'w3m-browse-url url)))

(new-bookmark "bdd" "http://chaijs.com/api/bdd/")
(new-bookmark "node" "http://nodejs.org/api")
(new-bookmark "redis" "http://redis.io/commands")
(new-bookmark "coffeescript" "http://coffeescript.org")
