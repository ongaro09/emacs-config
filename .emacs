;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package if not already installed
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Display line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; Disable tool bar
(tool-bar-mode -1)

;; Default frame size
(add-to-list 'default-frame-alist '(width . 135))
`(add-to-list 'default-frame-alist '(height . 41))

;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(## markdown-mode magit)))

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
