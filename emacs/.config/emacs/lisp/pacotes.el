;; Desabilita o gerenciador de pacotes padrão
(setq package-enable-at-startup nil)

;; Habilita o repo Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Lista de pacotes

;; Gruvbox-theme
(use-package gruvbox-theme :ensure t)
;; Carrega o tema
(load-theme 'gruvbox-dark-soft t)

;; Vertico - Minibuffer vertical
(use-package vertico :ensure t :init (vertico-mode))

;; Marginalia - anotações extras no menu
(use-package marginalia :ensure t :config (marginalia-mode))

;; Corfu - autocomplete
(use-package corfu :ensure t :init (global-corfu-mode))

(provide 'pacotes)
