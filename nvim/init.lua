-- Vim settings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true

require ("config.lazy")

vim.cmd.colorscheme "catppuccin-latte"

-- require ("mason").setup()
-- require ("mason-lspconfig").setup({
-- 	ensure_installed = {
-- 		"lua_ls",
-- 		"pylsp",
-- 		"clangd"
-- 	}
-- })


