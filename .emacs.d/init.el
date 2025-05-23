(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror 'nomessage)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'package)
(setq package-archives '("gnu" . "https://elpa.gnu.org/packages/")
      package-archives (append package-archives '("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(require 'package)
(require 'ui)
(require 'editing)
(require 'completion)
(require 'evil)
(require 'tools)

(require 'python)
(require 'c)
(require 'go)

(provide 'init)
