-- Vim settings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true

vim.g.coq_settings = { auto_start = "shut-up" }

require("config.lazy")

vim.cmd.colorscheme("oh-lucy")

-- require ("mason").setup()
-- require ("mason-lspconfig").setup({
-- 	ensure_installed = {
-- 		"lua_ls",
-- 		"pylsp",
-- 		"clangd"
-- 	}
-- })
