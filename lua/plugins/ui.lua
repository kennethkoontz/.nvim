return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local noirbuddy_lualine = require("noirbuddy.plugins.lualine")
			require("lualine").setup({
				options = {
					theme = noirbuddy_lualine.theme,
				},
				sections = noirbuddy_lualine.sections,
				inactive_sections = noirbuddy_lualine.inactive_sections,
			})
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				update_focused_file = {
					enable = true,
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>p", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ff", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>fm", builtin.marks, {})
		end,
	},
}
