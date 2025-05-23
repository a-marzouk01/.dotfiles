(use-package python
  :ensure nil
  :hook (python-mode . eglot-ensure)
  :config
  (setq python-indent-offset 4))

(provide 'python)
