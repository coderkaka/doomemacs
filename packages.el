;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

;;disabled packages
(disable-packages! solaire-mode
                   osx-trash
                   realgud
                   realgud-trepan-ni
                   ccls
                   tide
                   swiper
                   forge
                   code-review
                   company-anaconda
                   lsp-python-ms
                   pyimport)

;;text
(package! youdao-dictionary)
(package! link-hint)
(package! symbol-overlay)
(package! pomm :recipe (:host github :repo "SqrtMinusOne/pomm.el"))
;;(package! org-appear)

;; misc
(package! format-all)
(package! keycast)
(package! evil-string-inflection)
(package! all-the-icons-ibuffer)
(package! dired-narrow)
(package! atomic-chrome)
(package! git-link)
(package! magit-delta)
(package! citre)
(package! imenu-list)
(package! tmux-pane)
(when (not (modulep! :tools lsp +eglot))
  (package! lsp-docker))
(package! rime :recipe (:host github :repo "DogLooksGood/emacs-rime" :files ("*.el" "Makefile" "lib.c")))
(package! go-translate)
;; https://github.com/tecosaur/screenshot/issues/11
(package! screenshot :recipe (:host github :repo "tecosaur/screenshot"))
(package! affe)

;; programming
(package! protobuf-mode)
