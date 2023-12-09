return {
	{ "tjdevries/colorbuddy.nvim", branch = "dev" },
	{
		"jesseleite/nvim-noirbuddy",
		priority = 1000,
		config = function()
			require("noirbuddy").setup()
		end,
	},
}
