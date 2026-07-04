;; Configuração do seu nome e endereço de e-mail
(setq user-full-name "Cris Sousa")
(setq user-mail-address "cr.sousa616@gmail.com")
(setq auth-sources '("~/.authinfo"))

;; Configuração de recebimento (IMAP)
(setq gnus-select-method
      '(nnimap "gmail"
               (nnimap-address "imap.gmail.com")
               (nnimap-server-port 993)
               (nnimap-stream ssl)))

;; Configuração de envio (SMTP)
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)
