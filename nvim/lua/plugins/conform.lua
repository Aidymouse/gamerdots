return {
	"stevearc/conform.nvim",
	lazy = false,
	events = { "BufWritePre" },

	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			javascript = { "prettier" },
		},

		format_on_save = { timeout_ms = 500 },
	},
}
