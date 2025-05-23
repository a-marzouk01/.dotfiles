(use-package gruber-darker-theme
  :init (load-theme 'gruber-darker t))

(use-package default-text-scale
  :ensure t
  :config (default-text-scale-mode))

(add-to-list 'default-frame-alist '(font . "Iosevka-18"))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(setq scroll-margin 8
      scroll-conservatively 101
      scroll-preserve-screen-position t
      scroll-step 1)

(provide 'ui)
