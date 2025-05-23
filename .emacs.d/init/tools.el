(use-package magit
  :commands (magit-status))

(use-package project
  :ensure nil
  :config (setq project-switch-commands 'project-dired))

(provide 'tools)
