(use-package go-mode
  :hook (go-mode . my-go-mode-setup))

(defun my-go-mode-setup ()
  "Setup Go mode: use goimports and spaces instead of tabs."
  ;; Use goimports for formatting
  (setq gofmt-command "goimports")
  ;; Format buffer before saving
  (add-hook 'before-save-hook #'gofmt-before-save nil t)
  ;; Use spaces instead of tabs, with width 4
  (setq indent-tabs-mode nil)
  (setq tab-width 4))

(use-package eglot
  :after go-mode
  :hook (go-mode . eglot-ensure))

(provide 'go)
;;; go.el ends here
