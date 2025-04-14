return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local layout_actions = require("telescope.actions.layout")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<C-l>"] = actions.preview_scrolling_down,
					},
				},
				layout_config = {
					preview_width = 0.7,
					-- results_width = 0.4,
					-- horizontal = {
					-- preview_width = 0.7,
					-- results_width = 0.4,
					-- prompt_position = "top",
					-- },
					-- width = 0.9,
					-- height = 0.9,
				},
			},
			pickers = {
				live_grep = {
					theme = "ivy",
				},
				find_files = {
					theme = "ivy",
					-- theme = "dropdown",
					-- layout_config = {
					-- 	width = 0.9,
					-- 	height = 0.3,
					-- },

					-- config for horizontal with large preview window
					-- layout_config = {
					-- 	horizontal = {
					-- 		preview_width = 0.7,
					-- 		results_width = 0.4,
					-- 		promp_position = "top",
					-- 	},
					-- 	width = 0.9,
					-- 	height = 0.9,
					-- },
				},
				find_string = {
					theme = "ivy",
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git files" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
	end,
}
