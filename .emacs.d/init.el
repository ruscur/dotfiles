(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(evil-mode)
(setq key-chord-two-keys-delay 0.1)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

(key-chord-mode 1)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-list-file-prefix "~/.saves")
(setq auto-save-file-name-transforms `((".*" ,"~/.saves" t)))
(setq backup-by-copying t)
(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
         (column (c-langelem-2nd-pos c-syntactic-element))
         (offset (- (1+ column) anchor))
         (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name)))
              ;; Enable kernel mode for the appropriate files
              (when (and filename
                         (string-match (expand-file-name "~/Documents/")
                                       filename))
                (setq indent-tabs-mode t)
                (setq show-trailing-whitespace t)
                (c-set-style "linux-tabs-only")))))


(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(setq dtrt-indent-verbosity 0)

(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

(ido-mode t)
(show-paren-mode t)

(global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "<s-tab>") 'self-insert-command)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(company-backends (quote (company-gtags)))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Mono" :foundry "CTDB" :slant normal :weight normal :height 113 :width normal)))))
(setq ediff-split-window-function 'split-window-horizontally)
