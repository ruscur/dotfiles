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
