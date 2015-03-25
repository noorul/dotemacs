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
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
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
	 (quote
		(edit-server 4clojure clojure-cheatsheet ac-cider cider clojure-mode cdnjs tern-auto-complete tern ac-js2 js2-refactor json-mode js2-mode web-mode ac-html ghc hi2 flycheck-haskell ac-haskell-process virtualenvwrapper jedi processing-snippets processing-mode auto-complete smartparens flycheck-pyflakes flycheck helm-c-yasnippet java-snippets yasnippet helm-projectile projectile gist magit rainbow-delimiters aggressive-indent gnuplot ox-reveal org-gcal ob-mongo visual-regexp all expand-region multiple-cursors browse-kill-ring ace-isearch ace-window ace-jump-zap ace-jump-mode undo-tree zenburn-theme color-theme smart-mode-line-powerline-theme guide-key hydra helm-swoop helm hungry-delete use-package))))
(put 'narrow-to-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
