(setq custom-file "~/.emacs.custom.el")
(load custom-file 'noerror 'nomessage)

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq-default c-basic-offset 4)
(setq-default python-indent-offset 4)

(global-whitespace-mode -1)

(use-package emacs
  :ensure nil
  :custom
  (inhibit-startup-screen t)
  (scroll-margin 8)
  (scroll-conservatively 101)
  (scroll-preserve-screen-position t)
  (scroll-step 1)
  :config
  (add-to-list 'default-frame-alist '(font . "Iosevka-18"))
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (global-display-line-numbers-mode 1))

(use-package gruber-darker-theme
  :config
  (load-theme 'gruber-darker))

(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map (kbd "C-n") #'ido-next-match)
            (define-key ido-completion-map (kbd "C-p") #'ido-prev-match)))

(use-package ido
  :ensure t
  :init
  (setq ido-enable-flex-matching t
        ido-everywhere t)
  :config
  (ido-mode 1))

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))


(use-package evil
  :init
  (setq evil-want-C-u-scroll t
        evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (with-eval-after-load 'evil

    (define-key evil-insert-state-map   (kbd "C-c") #'evil-normal-state)
    (define-key evil-visual-state-map   (kbd "C-c") #'evil-normal-state)
    (define-key evil-operator-state-map (kbd "C-c") #'evil-normal-state)

    (define-key evil-visual-state-map "J" ":m '>+1<CR>gv=gv")
    (define-key evil-visual-state-map "K" ":m '<-2<CR>gv=gv")))

    (setq evil-default-cursor 'box)
    (setq evil-normal-state-cursor  'box)
    (setq evil-visual-state-cursor  'box)
    (setq evil-insert-state-cursor  'box)

(use-package cc-mode
  :ensure nil
  :mode ("\\.\\(cpp\\|cc\\|hpp\\|h\\)\\'" . c++-mode)
  :custom
  (c-basic-offset 4)
  (c-default-style "linux")
  (c++-tab-always-indent t))

(use-package magit
  :ensure t)


(provide 'init)
