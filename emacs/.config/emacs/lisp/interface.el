;; Remove tela de inicio
(setq inhibit-startup-message t)

;; Desabilita o package.el
(setq package-enable-at-startup nil)

;; Tira barra de menu/toolbar/scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Numero de linhas
(global-display-line-numbers-mode 1)

;; Tabline
(global-tab-line-mode)

;; Espaços em vez de TAB
(setq-default indent-tabs-mode nil)
(setq-default tab-indent 4)

;; Which-key
(which-key-mode 1)

;; Highlight das linhas
(global-hl-line-mode 1)

;; Lista os buffers no topo
(global-tab-line-mode 1)


;; Configura as frajas
(fringe-mode 5)


(provide 'interface)
