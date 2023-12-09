return {
	{ "tjdevries/colorbuddy.nvim", branch = "dev" },
	{
		"jesseleite/nvim-noirbuddy",
		config = function()
			require("noirbuddy").setup()
		end,
	},
}
