;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(require 'key-chord)
(key-chord-mode 1)
(key-seq-define evil-insert-state-map "kj" 'evil-normal-state)
(setq-default c-basic-offset 8
							tab-width 8
							indent-tabs-mode t)
(setq indent-tabs-mode t)
(setq show-trailing-whitespace t)
(require 'doom-themes)
(setq doom-theme 'doom-tomorrow-night)
(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))
(setq diary-file "/home/ruscur/notes/diary.org")
(setq org-agenda-include-diary t)
(setq org-agenda-files (quote ("/home/ruscur/notes/")))
(setq org-directory "/home/ruscur/notes")
(setq org-agenda-window-setup (quote current-window))
(setq org-log-done (quote time))
(global-visual-line-mode 1)
(setq visual-line-fringe-indicators (quote (left-curly-arrow right-curly-arrow)))
(setq left-fringe-width 5)
(setq doom-font (font-spec :family "IBM Plex Mono" :size 13)
			doom-variable-pitch-font (font-spec :family "IBM Plex Sans")) ; never actually works
(setq lsp-auto-configure t)
(setq doom-treemacs-enable-variable-pitch nil)
(setq helm-ff-skip-boring-files t)
