return {

	{
		"catppuccin/nvim",
		lazy = false,

		config = function()
			local color = require("catppuccin.palettes").get_palette("mocha")

			require("catppuccin").setup({
				flavour = "mocha",
				no_underline = true,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					functions = { "bold" },
					keywords = { "italic" },
				},
				color_overrides = {
					mocha = {
						base = color.mantle,
					},
				},
				highlight_overrides = {
					mocha = {
						NormalFloat = { bg = "none" },

						NvimTreeFolderIcon = { fg = color.peach },
						NvimTreeGitStagedIcon = { fg = color.green },
						NvimTreeGitNewIcon = { fg = color.green },

						PmenuSel = { bg = color.blue, fg = color.base },
						CmpSel = { link = "PmenuSel", bold = true },
						CmpPmenu = { bg = color.surface0 },
						CmpItemAbbr = { fg = color.overlay2 },
						CmpItemAbbrMatch = { fg = color.blue, style = { "bold" } },

						NoiceCmdlineIcon = { fg = color.text },
						NoiceCmdlinePopupTitle = { fg = color.text },
						NoiceCmdlinePopupBorder = { fg = color.text },

						["@keyword.import.cpp"] = { fg = color.red },
						["@namespace"] = { fg = color.yellow },
						["@string.cmake"] = { fg = color.red },
						["@constant.cmake"] = { fg = color.green },
					},
				},
				integrations = {
					cmp = true,
					alpha = true,
					flash = true,
					gitsigns = true,
					nvimtree = true,
					lsp_saga = true,
					treesitter = true,
					notify = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
