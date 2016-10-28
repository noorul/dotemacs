(package-initialize nil)
(add-to-list 'load-path "~/.emacs.d/packages/org-mode/contrib/lisp")
(add-to-list 'load-path "~/.emacs.d/packages/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/packages/lisp")
(require 'package)

;;(add-to-list 'package-archives
;; '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)

;; Override the packages with the git version of Org and other packages
(package-initialize t)
(setq package-enable-at-startup nil)
(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 (quote
		("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "40f6a7af0dfad67c0d4df2a1dd86175436d79fc69ea61614d668a635c2cd94ab" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "f024aea709fb96583cf4ced924139ac60ddca48d25c23a9d1cd657a2cf1e4728" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(org-agenda-files
	 (quote
		("~/Dropbox/orgfiles/i.org" "~/Dropbox/orgfiles/schedule.org")))
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Dropbox/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages
	 (quote
		(origami calfw calfw-gcal auto-complete-c-headers hyperbole suggest company dictionary pdf-tools blog-admin crux zenburn org-caldav fill-column-indicator change-inner dired+ twittering-mode circe mu4e-alert semi org-alert org autopair paredit-everywhere paredit org-present windsize try org-ac on-screen iedit volatile-highlights evil evil-surround evil-matchit highlight-parentheses rainbow-mode org-pandoc ox-pandoc ox-rst spacemacs spaceline spacemacs-theme solarized-theme ox-twbs fireplace cdnjs 4clojure clojure-snippets org-bullets zenburn-theme yasnippet which-key web-mode visual-regexp use-package undo-tree tern-auto-complete swiper smartparens smart-mode-line-powerline-theme rainbow-delimiters projectile ox-reveal ob-mongo markdown-mode magit live-py-mode js2-mode jedi hydra hungry-delete guide-key gnuplot flycheck-pyflakes expand-region edit-server color-theme browse-kill-ring beacon auctex aggressive-indent ace-window ac-cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'set-goal-column 'disabled nil)
