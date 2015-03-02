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
 '(org-mobile-directory "~/btsync/orgfiles/MobileOrg")
 '(org-mobile-inbox-for-pull "~/btsync/orgfiles/MobileOrg/pull.org")
 '(org-startup-folded (quote content))
 '(org-startup-indented t)
 '(package-selected-packages
<<<<<<< HEAD
	 (quote
		(edit-server 4clojure clojure-cheatsheet ac-cider cider clojure-mode cdnjs tern-auto-complete tern ac-js2 js2-refactor json-mode js2-mode web-mode ac-html virtualenvwrapper jedi processing-snippets processing-mode auto-complete smartparens flycheck-pyflakes flycheck helm-c-yasnippet java-snippets yasnippet helm-projectile projectile gist magit rainbow-delimiters aggressive-indent gnuplot ox-reveal org-gcal ob-mongo visual-regexp all expand-region multiple-cursors browse-kill-ring ace-isearch ace-window ace-jump-zap ace-jump-mode undo-tree zenburn-theme color-theme smart-mode-line-powerline-theme guide-key hydra helm-swoop helm hungry-delete use-package))))
=======
   (quote
    (auctex zenburn-theme web-mode visual-regexp virtualenvwrapper use-package undo-tree tern-auto-complete smartparens smart-mode-line-powerline-theme restclient rainbow-delimiters processing-snippets processing-mode paradox ox-reveal org-gcal ob-mongo ob-http magit json-mode jedi java-snippets idomenu hydra hungry-delete helm-projectile helm-c-yasnippet guide-key gnuplot gist fold-dwim flycheck-pyflakes expand-region engine-mode elpy edit-server discover-my-major discover-js2-refactor diff-hl color-theme clojure-cheatsheet cdnjs browse-kill-ring all aggressive-indent ace-window ace-jump-zap ace-isearch ac-php ac-js2 ac-html ac-cider 4clojure))))
>>>>>>> 5884a8e8cec2efab87b9d55047027ad528938aa5
(put 'narrow-to-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'dired-find-alternate-file 'disabled nil)
