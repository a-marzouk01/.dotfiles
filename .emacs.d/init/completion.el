(use-package ido
  :init
  (setq ido-enable-flex-matching t
        ido-everywhere t)
  :config (ido-mode 1))

(use-package smex
  :init (smex-initialize)
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))

(use-package prescient
  :config
  (prescient-persist-mode 1))
(use-package ido-prescient
  :after (ido prescient)
  :config
  (ido-prescient-mode 1))

(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map (kbd "C-n") #'ido-next-match)
            (define-key ido-completion-map (kbd "C-p") #'ido-prev-match)))

(provide 'completion)
