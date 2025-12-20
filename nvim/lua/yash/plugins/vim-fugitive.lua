return {
	-- this is a comment
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>", { desc = "Git Status" })
		vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "Git blame" })
	end,
}
