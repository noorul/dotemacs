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
 '(org-agenda-files (quote ("~/btsync/orgfiles/")))
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/btsync/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote content))
 '(org-startup-indented t)
 '(package-selected-packages
	 (quote
		(cdnjs 4clojure clojure-snippets org-bullets zenburn-theme yasnippet which-key web-mode visual-regexp use-package undo-tree tern-auto-complete swiper smartparens smart-mode-line-powerline-theme rainbow-delimiters projectile ox-reveal ob-mongo markdown-mode magit live-py-mode js2-mode jedi hydra hungry-delete guide-key gnuplot flycheck-pyflakes expand-region edit-server color-theme browse-kill-ring beacon auctex aggressive-indent ace-window ac-cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
