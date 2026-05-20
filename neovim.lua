return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true,
			show_end_of_buffer = false,
			term_colors = true,
			dim_inactive = {
				enabled = true,
				shade = "dark",
				percentage = 0.15,
			},
			float = {
				transparent = true,
			},

			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				mini = true,
				telescope = true,
				indent_blankline = { enabled = true },
				lsp_trouble = true,
				which_key = true,
				dashboard = true,
				neotree = true,
				alpha = true,
				flash = true,
				noice = true,
			},

			custom_highlights = function(colors)
				return {
					Keyword = { fg = colors.blue },
					Function = { fg = colors.blue },
					Identifier = { fg = colors.mauve },
					Type = { fg = colors.yellow },
					String = { fg = colors.green },
					Comment = { fg = colors.overlay1, italic = true },
					FloatBorder = { fg = "#89b4fa" },
					WinSeparator = { fg = "#89b4fa" },
				}
			end,
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-mocha",
		},
	},
	{
		"catppuccin/nvim",
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin-mocha")
			vim.opt.guicursor = {
				"n-v-c-sm:hor25-Cursor/lCursor",
				"i-ci-ve:ver25-Cursor/lCursor",
				"r-cr-o:hor20-Cursor/lCursor",
			}
		end,
	},
}
