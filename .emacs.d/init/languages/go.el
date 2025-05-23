(use-package go-mode
  :hook (go-mode . my-go-mode-setup))
(defun my-go-mode-setup ()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook #'gofmt-before-save nil t))

(use-package eglot
  :after go-mode
  :hook (go-mode . eglot-ensure))

(provide 'go)
