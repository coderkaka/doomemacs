(load-theme 'doom-one-light t)
(setq evil-emacs-state-cursor `(box ,(doom-color 'violet)))

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;; (setq doom-font (font-spec :family "Monaco" :size 15 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
(when (display-graphic-p)
  (setq user-font
        (cond
         ((find-font (font-spec :name "Mocano")) "Mocano")
         ((find-font (font-spec :name "OperatorMono Nerd Font")) "OperatorMono Nerd Font")
         ((find-font (font-spec :name "Droid Sans Mono")) "Droid Sans Mono")
         ((find-font (font-spec :name "Droid Sans Fallback")) "Droid Sans Fallback")))

  ;; calculate the font size based on display-pixel-height
  (setq doom-font (font-spec :family user-font :size 15)
        doom-big-font (font-spec :family user-font :size 18)
        doom-variable-pitch-font (font-spec :family user-font :size 15)
        doom-modeline-height 16)
  (setq doom-font-increment 1)
)
