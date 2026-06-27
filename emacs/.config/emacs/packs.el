;; Lista de pacotes

;; Gruvbox-theme
(use-package gruvbox-theme :ensure t)
;; Carrega o tema
(load-theme 'gruvbox-dark-soft t)

;; Vertico - Minibuffer vertical
(use-package vertico :ensure t :init (vertico-mode))

;; Marginalia - anotações extras no menu
(use-package marginalia :ensure t :config (marginalia-mode))

