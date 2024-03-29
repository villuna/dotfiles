;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
 (setq doom-font (font-spec :family "Fira Code" :size 15 :weight 'semi-light)
       doom-variable-pitch-font (font-spec :family "sans" :size 13)
       doom-unicode-font (font-spec :family "JuliaMono"))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-palenight)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(setq +zen-text-scale 1)


;; Here are some additional functions/macros that could help you configure Doom:
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package! org-roam
  :custom
  (org-roam-directory "~/RoamNotes")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i"   . completion-at-point)))

(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t
        +org-roam-open-buffer-on-find-file nil))

;; maximise on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; spc spc for M-x
(map! :leader :n "SPC" #'execute-extended-command)

;;(defun what-we-do-every-night-pinky ()
;;  (put-text-property
;;   (point)
;;   (progn
;;     (mapc (lambda (line)
;;             (insert
;;              (+doom-dashboard--center
;;               +doom-dashboard--width
;;               (let ((extra (max 0 (- +doom-dashboard--width (length line)))))
;;                 (concat line (make-string extra 32))))
;;              " \n"))
;;           '("Are you pondering what I'm pondering, Pinky?"
;;             ""
;;             "                          ,,,        !/:. "
;;             "                         /::\\\".      !!::: "
;;             "                         :::::\\\".  ,\" \\:,:: "
;;             "                         ::::::\\ \". ,\",\"\\::. "
;;             "                         \\:::::\":\\ \"/\"\"v' :' "
;;             "                          !::::\\   !    \\ \\   __ "
;;             "                           \"::::\\  \\     ! \\.&&&&, "
;;             "                              ,\" __ \",  cd,&&&&&&' "
;;             "                              \\    \". \"\" / \\&&&\"                       _,--- "
;;             "                                \"\",__\\_        /                    _,:\"::::: "
;;             "                              _,\" ,\"\"  ,-,__,/\":,_                ,\",\"::::::: "
;;             "                           _,\"  ,\"     `''   ::::,\",__,,----,,__,\" /::::::::: "
;;             "                        ,\"   ,\".__,          \\:::,\"            \"  /:::\":::::/ "
;;             "                      ,\"  ,/\"::::::\\          >\"                 (_-\"/:::::: "
;;             "                     /  ,\"_!:::::::/,       ,\"              _,,--,  /::::::/ "
;;             "                   /   \"\" _,\"\\:::::::'     !              ,\"      ){:::::/ "
;;             "                  !    _,\"    \\ \"\",         \\,\"\"\"-,____,\"__,,,\"_,\" _/ "
;;             "                   \"\"t\"       \\\\   \\          \"-,_(*)&&&&(*),\" \\ .\" "
;;             "                    /          \\\",  !            ,   \\   ! -    ) "
;;             "                    !          \\  \"\"             !    !==!\"-,__,' "
;;             "                    !           \\                 \"\"\"_\"\"\"\"`, \", /\"_ "
;;             "                    \\       ,   .l                 /\" \"     \", \\! ,_/ "
;;             "                     ),     \\   / \\                \\/       ,, /! ! "
;;             "                   ,::\\      \\,\"   \\                !        \\/ ! ! "
;;             "               _,::::\" )     )\\  ,\"  ___            \\ -,_,  ,\"\",! ! "
;;             "        __,,,::::\"\"   ,\"   ,\":::,-:::--:\"           __\\_!__/_\"\"-,_! "
;;             "  ,,:::\"\"\"\"\"\"\"      ,:_,\"\"__...._\"\"\"::::\"\"       /:::::\" \"\":::::: "
;;             " (:._              l::::::::::::\\\\/               \"\"          \"\" "
;;             "   \"\"\"\"--,,,---              \"\"\"\" "
;;             ""
;;             "I think so Brain..."))
;;     (point))
;;   'face 'doom-dashboard-banner))
;;
;;
;;(setq +doom-dashboard-ascii-banner-fn #'what-we-do-every-night-pinky)

(setq doom-emoji-fallback-font-families nil)
(setq doom-symbol-fallback-font-families nil)
