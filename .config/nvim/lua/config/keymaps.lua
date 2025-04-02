-- leader key
vim.g.mapleader = " "

-- shortcuts to w, q, x
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")
-- vim.keymap.set("n", "<leader>q!", ":q!<cr>")
-- vim.keymap.set("n", "<leader>x", ":x<cr>")

-- buffer
vim.keymap.set('n', '<leader>n', ':bn<cr>') -- next buffer
vim.keymap.set('n', '<leader>p', ':bp<cr>') -- previous buffer
vim.keymap.set('n', '<leader>x', ':bd<cr>') -- delete buffer

-- Center the screen on the next/prev search result with n/N
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "{", "{zzzv")
vim.keymap.set("n", "}", "}zzzv")

-- unhilight
vim.keymap.set("n", "<leader>h", ":noh<cr>")

-- move a blocks of text up/down with K/J in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })

-- PLUGINS KEYMAPS --

vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")

vim.keymap.set({"n", "v"}, "<C-k>", ":CommentToggle<cr>")
