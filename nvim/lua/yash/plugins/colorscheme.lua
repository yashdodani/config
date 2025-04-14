-- lua/plugins/rose-pine.lua

return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			disable_italics = true,
			disable_bold = true,
			variant = "main",
			dark_variant = "main",
			dim_inactive_windows = false,
			extend_background_behind_borders = true,
			styles = {
				bold = false,
				italics = false,
			},
			highlight_groups = {
				-- Set cursor to white
				Cursor = { fg = "base", bg = "white" },
				TermCursor = { fg = "base", bg = "white" },
				CursorLine = { bg = "none" },

				-- Customize background color to pure black
				Normal = { bg = "#080808" },
				NormalNC = { bg = "#080808" },
				NormalFloat = { bg = "#080808" },

				-- Ensure consistent background for other UI elements
				SignColumn = { bg = "#080808" },
				StatusLine = { bg = "#080808" },
				StatusLineNC = { bg = "#080808" },
				VertSplit = { bg = "#080808" },

				TelescopeBorder = { fg = "white", bg = "none" },
				TelescopeSelection = {
					bg = "#1a1a1a", -- Dark background for selected item
					fg = "white", -- White text for selected item
					bold = true, -- Optional: make selected item bold
				},
				TelescopeSelectionCaret = {
					fg = "red", -- Color of the caret (pointer) in selection
					bg = "#1a1a1a", -- Match the selection background
				},
				TelescopeNormal = { bg = "none" },
			},
		})

		-- vim.api.nvim_create_autocmd("ColorScheme", {
		-- 	pattern = "*",
		-- 	callback = function()
		-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "#1b1b1b" }) -- Set the normal background to black
		-- 		vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1b1b1b" }) -- Set the background for non-current windows to black
		-- 		vim.api.nvim_set_hl(0, "SignColumn", { bg = "#1b1b1b" })
		-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#202020" })
		-- vim.api.nvim_set_hl(0, "Cursor", { fg = 15, bg = 13 })
		-- vim.api.nvim_set_hl(0, "CursorReset", { fg = 15, bg = 13 })

		-- Set Telescope background colors to dark black
		-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#1b1b1b" })
		-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#1b1b1b" })
		-- vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#1b1b1b" })
		-- vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "#1b1b1b" })
		-- 	end,
		-- })

		vim.cmd("colorscheme rose-pine")

		-- Set cursor color after colorscheme loading to ensure it sticks
		vim.api.nvim_set_hl(0, "Cursor", { fg = "black", bg = "white" })
		vim.api.nvim_set_hl(0, "TermCursor", { fg = "black", bg = "white" })
	end,
}
