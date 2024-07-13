return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
			git = {
				ignore = false,
			},
		})
		vim.keymap.set(
			"n",
			"<leader>e",
			":NvimTreeToggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle file explorer" }
		)
		vim.keymap.set(
			"n",
			"<leader>E",
			":NvimTreeFindFileToggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle file explorer on current file" }
		)
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<leader>ec",
		-- 	":NvimTreeCollapse<CR>",
		-- 	{ noremap = true, silent = true, desc = "Collapse file explorer" }
		-- )
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<leader>er",
		-- 	":NvimTreeRefresh<CR>",
		-- 	{ noremap = true, silent = true, desc = "Refresh file explorer" }
		-- )
	end,
}
