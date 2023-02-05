;;; ~/.doom.d/+os.el -*- lexical-binding: t; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MACOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun +os/read-apps ()
  "Applications collection used for `+shell--open-with' method.
To add executable: Idea -> Tools -> Create Command Line Launcher"
  (let ((shell-apps '("idea" "code -g" "pycharm" "clion")))
    (completing-read "Select Applications:" shell-apps)))

(defun get-filename-with-line-number ()
  (concat (concat (buffer-file-name) ":")
          (number-to-string (line-number-at-pos))))

(when IS-MAC
  (+macos--open-with reveal-in-finder nil default-directory)
  (+macos--open-with reveal-project-in-finder nil
                     (or (doom-project-root) default-directory))

  (+shell--open-with reveal-in-apps (+os/read-apps)
                     (string-join `("'" ,(get-filename-with-line-number) "'")))
  (+shell--open-with reveal-project-in-apps (+os/read-apps)
                     (or (doom-project-root) default-directory))

  (+macos--open-with reveal-in-typora "typora" buffer-file-name))
