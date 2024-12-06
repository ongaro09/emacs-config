;; Initialize package sources

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
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

;; Enable markdown-preview-mode
(require 'markdown-preview-mode)

;; Configure impatient mode
(add-to-list 'load-path "~/.emacs.d/elpa/impatient-mode-20230511.1746")
(require 'impatient-mode)

;; Configure auctex
(setenv "PATH" (concat "/usr/local/texlive/2024/bin/x86_64-linux:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/texlive/2024/bin/x86_64-linux") exec-path))

;; Configure multiple cursors
(require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; Configure emmet mode
(add-to-list 'load-path "~/.emacs.d/elpa/emmet-mode-1.0.8/")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

;; Configure smex
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


;; Enable ido mode everywhere
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Load iedit package if installed
(require 'iedit)
(global-set-key (kbd "C-<f1>") 'iedit-mode)


;; Enable company mode in all buffers
(add-hook 'after-init-hook 'global-company-mode)

;; Add livedown to the load path
(add-to-list 'load-path "~/.emacs.d/emacs-livedown")

;; Load Livedown
(require 'livedown)

;; Set Livedown options
(setq livedown-port 1337) ;; Port for livedown to use
(setq livedown-open t)    ;; Automatically open preview in browser

;; Configure rust-mode
(require 'rust-mode)
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook
          (lambda () (prettify-symbols-mode)))

;; Define keybindings for starting/stopping Livedown preview
(global-set-key (kbd "C-c C-l") 'livedown-preview)
(global-set-key (kbd "C-c C-k") 'livedown-kill)

;; Custom theme
(load-theme 'gruvbox t)
(setq custom-enabled-themes '(gruvbox))

;; Enable Livedown for HTML, CSS, and JavaScript modes
(dolist (hook '(html-mode-hook css-mode-hook js-mode-hook))
  (add-hook hook
            (lambda ()
              (local-set-key (kbd "C-c C-l") 'livedown-preview)
              (local-set-key (kbd "C-c C-k") 'livedown-kill))))


;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(livedown-autostart nil)
 '(livedown-browser nil)
 '(livedown-open t)
 '(livedown-port 1337)
 '(package-selected-packages
   '(impatient-mode multiple-cursors markdown-preview-mode gruber-darker-theme rust-mode livedown iedit js2-mode skewer-mode company emmet-mode auctex ## markdown-mode smex)))

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-number ((t (:inherit default :background "#28282B" :foreground "#7c6f64"))))
 '(line-number-current-line ((t (:inherit default :background "#504945" :foreground "#fe8019")))))

