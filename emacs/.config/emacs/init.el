;; Tira tela de início
(setq inhibit-startup-message t)

;; Tira barra de menu/toolbar/scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Número das linhas
(global-display-line-numbers-mode 1)

;; Tema
(load-theme 'gruvbox-dark-soft t)

;; Espaços em vez de TAB
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Salvar backups numa pasta só
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(which-key-mode 1)
(global-hl-line-mode 1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

