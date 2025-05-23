(use-package evil
  :init
  (setq evil-want-C-u-scroll t
        evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-c") #'evil-normal-state)
  (define-key evil-visual-state-map (kbd "C-c") #'evil-normal-state)
  (define-key evil-operator-state-map (kbd "C-c") #'evil-normal-state)

  (define-key evil-visual-state-map "J" ":m '>+1<CR>gv=gv")
  (define-key evil-visual-state-map "K" ":m '<-2<CR>gv=gv"))

(setq evil-default-cursor 'box
      evil-normal-state-cursor 'box
      evil-visual-state-cursor 'box
      evil-insert-state-cursor 'box)

(provide 'evil)
