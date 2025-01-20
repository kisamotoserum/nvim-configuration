return {
	-- amongst your other plugins
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require('gitsigns').setup{
				signcolumn = auto,
				on_attach = function()
					vim.wo.signcolumn = "yes"
				end
			}
		end,
	},
}
