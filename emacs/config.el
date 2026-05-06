;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
;;


;; copied from Derek Taylor (aka Distrotube)
;;(evil-define-key 'normal ibuffer-mode-map
;;  (kbd "f c") 'ibuffer-filter-by-content
;;  (kbd "f d") 'ibuffer-filter-by-directory
;;  (kbd "f f") 'ibuffer-filter-by-filename
;;  (kbd "f m") 'ibuffer-filter-by-mode
;;  (kbd "f n") 'ibuffer-filter-by-name
;;  (kbd "f x") 'ibuffer-filter-disable
;;  (kbd "g h") 'ibuffer-do-kill-lines
;;  (kbd "g H") 'ibuffer-update)

;;(beacon-mode 1)

(map! :leader
      :desc "Consult Outline"
      "s h" #'consult-outline)

(map! :leader
      :desc "M-x"
      "SPC" #'execute-extended-command)


(map! :leader
      :desc "projectile-find-file"
      "f f" #'projectile-find-file)



(map! :leader
      (:prefix ("d" . "dired")
       :desc "Open dired" "d" #'dired
       :desc "Dired jump to current" "j" #'dired-jump)
      (:after dired
       (:map dired-mode-map
        :desc "Peep-dired image previews" "d p" #'peep-dired
        :desc "Dired view file"           "d v" #'dired-view-file)))

(evil-define-key 'normal dired-mode-map
 ;; (kbd "TAB") 'dired-display-file
  (kbd "l") 'dired-display-file
  (kbd "h") 'dired-up-directory
  (kbd "m") 'dired-mark
  (kbd "t") 'dired-toggle-marks
  (kbd "u") 'dired-unmark
  (kbd "C") 'dired-do-copy
  (kbd "D") 'dired-do-delete
  (kbd "J") 'dired-goto-file
  (kbd "M") 'dired-do-chmod
  (kbd "O") 'dired-do-chown
  (kbd "P") 'dired-do-print
  (kbd "R") 'dired-do-rename
  (kbd "T") 'dired-do-touch
  (kbd "Y") 'dired-copy-filenamecopy-filename-as-kill ; copies filename to kill ring.
  (kbd "Z") 'dired-do-compress
  (kbd "+") 'dired-create-directory
  (kbd "-") 'dired-do-kill-lines
  (kbd "% l") 'dired-downcase
  (kbd "% m") 'dired-mark-files-regexp
  (kbd "% u") 'dired-upcase
  (kbd "* %") 'dired-mark-files-regexp
  (kbd "* .") 'dired-mark-extension
  (kbd "* /") 'dired-mark-directories
  (kbd "; d") 'epa-dired-do-decrypt
  (kbd "; e") 'epa-dired-do-encrypt)

;;(setq dired-listing-switches "-ahl --group-directories-first")





;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "Alan Gomez H"
;;       user-mail-address "alagomez@paloaltonetworks.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;

;; before doom-themes
;; ------------------
(setq! eziam-scale-headings nil)
(setq leuven-scale-outline-headlines nil)
;; For dark theme:
(setq leuven-dark-scale-outline-headlines nil)

(setq leuven-scale-org-agenda-structure nil)
(setq leuven-scale-org-document-title nil)
(setq leuven-scale-volatile-highlight nil)
;; For dark theme:
(setq leuven-dark-scale-org-agenda-structure nil)
(setq leuven-dark-scale-org-document-title nil)
(setq leuven-dark-scale-volatile-highlight nil)


(setq doom-theme 'modus-operandi)



(after! doom-themes
  (
        setq doom-themes-enable-bold t
        doom-themes-enable-italic nil
  )
 )

(setq mac-command-modifier 'control)

(setq avy-all-windows t)


;;(setq doom-font (font-spec :family "Overpass Mono Light" :size 13 :height 16 ))
(setq doom-font (font-spec :family "Overpass Mono Light" :size 13 :weight 'bold))
;;(setq doom-font (font-spec :family "Roboto Mono" :size 13 :height 19 ))
;;(setq doom-font (font-spec :family "Fira Mono Medium" :size 13 :height 19 ))
;;(setq doom-font (font-spec :family "Ubuntu Mono" :size 15 :height 16 ))
;;(setq doom-font (font-spec :family "Ubuntu Mono" :size 15 :weight 'bold))
;;(custom-set-faces!
  ;;'(font-lock-comment-face :slant italic)
  ;;'(font-lock-keyword-face :slant italic))

(setq
 projectile-project-search-path '("~/do/")
)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


(map! :leader
      ;;:desc "Comment or uncomment lines"      "TAB TAB" #'comment-line
      (:prefix ("t" . "toggle")
       ;;:desc "Toggle line numbers"            "l" #'doom/toggle-line-numbers
       ;;:desc "Toggle line highlight in frame" "h" #'hl-line-mode
       ;;:desc "Toggle line highlight globally" "H" #'global-hl-line-mode
       :desc "Toggle truncate lines"          "t" #'toggle-truncate-lines))

;; agh test BEGIN
;;(setq display-line-numbers-type t)
;;(map! :leader
;;      ;;:desc "Comment or uncomment lines"      "TAB TAB" #'comment-line
;;      (:prefix ("control" . "control")
;;       ;;:desc "Toggle line numbers"            "l" #'doom/toggle-line-numbers
;;       ;;:desc "Toggle line highlight in frame" "h" #'hl-line-mode
;;       ;;:desc "Toggle line highlight globally" "H" #'global-hl-line-mode
;;       :desc "find-file"          "control" #'find-file))
;; agh test END


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/do/org/")
;;      org-hide-emphasis-markers t)

(setq org-roam-directory "~/do/org/roam")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;; line added for a chiuck check test

;; Deft
(setq deft-directory "~/do/org"
      deft-extensions '("txt" "org" "md")
      deft-recursive t)

;; journal
(setq org-journal-date-prefix "#+TITLE: "
      org-journal-time-prefix "* "
      org-journal-date-format "%a, %Y-%m-%d"
      org-journal-file-format "%Y-%m-%d.org")

;; org-download
(setq org-dowload-enable 1)
