(use-package cc-mode
  :ensure nil
  :mode ("\\.\(cpp\\|cc\\|hpp\\|h\\)\'" . c++-mode)
  :custom
  (c-basic-offset 4)
  (c-default-style "linux")
  (c++-tab-always-indent t))

(provide 'c)
