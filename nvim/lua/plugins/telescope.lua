return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fg", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ff", builtin.live_grep, {})
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
