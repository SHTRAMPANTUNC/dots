return {
	{
		"neovim/nvim-lspconfig",
		enable = true,
        event = { "VimEnter" },
		dependencies = {
			"b0o/schemastore.nvim",
		},
		config = function()
            require("config.lsp.init")
        end,
	},
}
