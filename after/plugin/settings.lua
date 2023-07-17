require("catppuccin").setup({
	flavour = "frappe",
	transparent_background = true,
})
vim.cmd.set "fileformat=dos"

vim.cmd "au BufRead,BufNewFile * set fileformat=dos"

vim.cmd.colorscheme "catppuccin"

vim.wo.relativenumber = true
