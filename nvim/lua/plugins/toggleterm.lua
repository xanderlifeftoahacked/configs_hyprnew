return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 20,
			shell = "env vim=1 fish",
		})
	end,
}
