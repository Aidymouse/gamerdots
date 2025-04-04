return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	lazy=false,
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
	      { "<leader>sf", ":Telescope find_files<return>", desc="[S]earch [F]iles"},
	      { "<leader>sg", ":Telescope live_grep<return>", desc="Live [G]rep"},
	      { "<leader>sr", ":Telescope resume<return>", desc="[R]esume Search"},
	      { "<leader><leader>", ":Telescope buffers<return>", desc="Telescope Open Buffers"},
	}
}
