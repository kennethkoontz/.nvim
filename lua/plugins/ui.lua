return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "solarized",
				},
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
			require("telescope").setup({
				defaults = {
					layout_config = {
						prompt_position = "top",
					},
					sorting_strategy = "ascending",
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>p", builtin.find_files, {}, "Find files")
			vim.keymap.set("n", "<leader>ff", builtin.live_grep, {}, "Live grep")
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {}, "Find buffers")
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}, "Help")
			vim.keymap.set("n", "<leader>fm", builtin.marks, {})
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		config = function()
			vim.keymap.set("n", "<leader>xx", function()
				require("trouble").toggle()
			end)
			vim.keymap.set("n", "<leader>xw", function()
				require("trouble").toggle("workspace_diagnostics")
			end)
			vim.keymap.set("n", "<leader>xd", function()
				require("trouble").toggle("document_diagnostics")
			end)
			vim.keymap.set("n", "<leader>xq", function()
				require("trouble").toggle("quickfix")
			end)
			vim.keymap.set("n", "<leader>xl", function()
				require("trouble").toggle("loclist")
			end)
			vim.keymap.set("n", "gR", function()
				require("trouble").toggle("lsp_references")
			end)
		end,
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false

			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
			map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
			map("n", "<Leader>fx", "<Cmd>BufferClose<CR>", opts)
			map("n", "<Leader>fa", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)
		end,
		opts = {
			auto_hide = 1,
			icons = {
				separator = { left = "" },
			},
			sidebar_filetypes = {
				NvimTree = true,
			},
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
}
