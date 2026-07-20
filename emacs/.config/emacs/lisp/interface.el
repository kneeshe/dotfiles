;; Remove tela de inicio
(setq inhibit-startup-message t)

;; Desabilita o package.el
(setq package-enable-at-startup nil)

;; Tira barra de menu/toolbar/scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Numero de linhas e colunas no line-mode
(global-display-line-numbers-mode 1)
(column-number-mode 1)
(setq column-number-indicator-zero-based nil)

;; Tabline
(global-tab-line-mode)

;; Espaços em vez de TAB
(setq-default indent-tabs-mode nil)
(setq-default tab-indent 4)
(setq tab-always-indent 'complete)

;; Which-key
(which-key-mode 1)

;; Highlight das linhas
(global-hl-line-mode 1)

;; Lista os buffers no topo
(global-tab-line-mode 1)

;; Configura as frajas
(fringe-mode 5)

;; Mostra o relogio
(display-time-mode t)
(setq display-time-24hr-format t)

(provide 'interface)
