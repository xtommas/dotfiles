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

		local function on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- Default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- Custom mappings
			vim.keymap.set("n", "O", api.node.open.tab, opts("Open: New Tab"))
		end

		require("nvim-tree").setup({
			on_attach = on_attach,
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
			git = {
				ignore = false,
			},
			diagnostics = {
				enable = true,
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
			"<leader>ef",
			":NvimTreeFindFileToggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle file explorer on current file" }
		)
		vim.keymap.set(
			"n",
			"<leader>ec",
			":NvimTreeCollapse<CR>",
			{ noremap = true, silent = true, desc = "Collapse file explorer" }
		)
		vim.keymap.set(
			"n",
			"<leader>er",
			":NvimTreeRefresh<CR>",
			{ noremap = true, silent = true, desc = "Refresh file explorer" }
		)
	end,
}
