-- Configuração para diagnósticos LSP

vim.diagnostic.config({
  -- Virtual text (mensagens inline)
  virtual_text = {
    spacing = 4,
    source = "if_many", -- Mostra source apenas se houver múltiplos LSPs
    prefix = "", -- Remove o prefix para evitar duplicação visual
    format = function(diagnostic)
      -- Formato customizado: apenas a mensagem, sem repetir o tipo
      return diagnostic.message
    end,
  },
  
  -- Signs na gutter (coluna lateral)
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚",
      [vim.diagnostic.severity.WARN] = "󰀪",
      [vim.diagnostic.severity.HINT] = "󰌶",
      [vim.diagnostic.severity.INFO] = "",
    },
  },
  
  -- Underline nos erros
  underline = true,
  
  -- Não atualizar durante inserção (menos distração)
  update_in_insert = false,
  
  -- Ordenar por severidade (erros primeiro)
  severity_sort = true,
  
  -- Configuração do float popup (quando usar gl)
  float = {
    border = "rounded",
    source = "always", -- Sempre mostra a source no popup
    header = "",
    prefix = "",
    focusable = false,
    style = "minimal",
  },
})
