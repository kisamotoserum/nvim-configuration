return {
	-- lsp plugin
	{ "neovim/nvim-lspconfig",
	  dependencies = {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim"
	  },
	  config = function()
	    local capabilities = vim.lsp.protocol.make_client_capabilities()
	    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

	    require('mason').setup()
	    local mason_lspconfig = require 'mason-lspconfig'
	    mason_lspconfig.setup {
		ensure_installed = { "pyright" }
	    }
	    require("lspconfig").pyright.setup {
		capabilities = capabilities,
	    }

	    --setting up lsp messages to be popups (instead of floating off screen)
	    vim.diagnostic.config({
		    virtual_text = false,
		    float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		    },
		    signs = true,
		    underline = true,
		    update_in_insert = true,
		    severity_sort = false,
		})


	  end
	},	
}
