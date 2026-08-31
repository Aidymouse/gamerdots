-- Vim settings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2

vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- vim.g.coq_settings = { auto_start = "shut-up" } -- Happens in lspconfig init now

require("config.lazy")

vim.cmd.colorscheme("monotone")

-- require ("mason").setup()
-- require ("mason-lspconfig").setup({
-- 	ensure_installed = {
-- 		"lua_ls",
-- 		"pylsp",
-- 		"clangd"
-- 	}
-- })
