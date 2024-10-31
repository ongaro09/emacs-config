;; Initialize package sources

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Set Font-type
(set-face-attribute 'default nil
                    :font "Fira Code Retina"
                    :height 120)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; Disable tool bar
(tool-bar-mode -1)

;; Display current column
(setq column-number-mode t)

;; Default frame size
(add-to-list 'default-frame-alist '(width . 135))
(add-to-list 'default-frame-alist '(height . 41))

;; Configure auctex
(setenv "PATH" (concat "/usr/local/texlive/2024/bin/x86_64-linux:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/texlive/2024/bin/x86_64-linux") exec-path))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(auctex ## markdown-mode smex)))

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
