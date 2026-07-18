;; Desabilita o gerenciador de pacotes padrão
(setq package-enable-at-startup nil)

;; Habilita o repo Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Lista de pacotes

;; Vertico - Minibuffer vertical
(use-package vertico :ensure t :init (vertico-mode))

;; Marginalia - anotações extras no menu
(use-package marginalia :ensure t :config (marginalia-mode))

;; Orderless - pesquisa fuzzy
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles partial-completion))))
  (completion-pcm-leading-wildcard t)) ;; Emacs 31: partial-completion behaves like substring

;; Corfu - autocomplete
(use-package corfu :ensure t :init (global-corfu-mode))

;; Doom-themes - temas
(use-package doom-themes
  :ensure t
  :custom
  ;; Global settings (defaults)
  (doom-themes-enable-bold t)   ; if nil, bold is universally disabled
  (doom-themes-enable-italic t) ; if nil, italics is universally disabled
  :config
  (load-theme 'doom-gruvbox t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(provide 'pacotes)
