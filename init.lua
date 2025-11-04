vim = vim
fn = vim.fn
api = vim.api
cmd = vim.cmd
opt = vim.opt
g = vim.g

require("pepito")

-- colorscheme
cmd([[colorscheme tokyonight-night]])
vim.opt.clipboard = "unnamedplus"

-- Auto commands
api.nvim_create_autocmd("BufEnter", {
	pattern = "term://*",
	command = "startinsert",
})
