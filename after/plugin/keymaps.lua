local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

local nmap = function(keys, func, desc)
	vim.api.nvim_set_keymap('n', keys, func, { noremap = false, silent = false, desc = desc })
end
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

keymap('n', '<leader>q', ':q!<CR>', { noremap = true, silent = true, desc = 'Close Neovim'})
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

keymap("n", "n", 'nzz', default_opts)
keymap("n", "N", "Nzz", default_opts)

keymap("n", "<C-s>", ":w<CR>", default_opts)


keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-k>h", default_opts)

keymap("v", "p", '"_dP', default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- plugin keymaps
--
nmap("<leader>e", ':Neotree toggle<CR>', "Toggle [E]xplorer")


