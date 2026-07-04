;; importa os modulos
(load-file "~/.config/emacs/lisp/pacotes.el")
(load-file "~/.config/emacs/lisp/interface.el")
(load-file "~/.config/emacs/lisp/gnus.el")

;; Desliga o backup (file~) e o autosave (#file#)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Criado pelo Emacs - NÃO MEXER
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20"
     default))
 '(org-agenda-files nil)
 '(package-selected-packages '(corfu gruvbox-theme marginalia vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
