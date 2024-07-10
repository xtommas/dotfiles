return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"svelte",
				"go",
				"rust",
				"python",
				"lua",
				"markdown",
				"markdown_inline",
				"dockerfile",
				"gitignore",
				"sql",
				"vim",
				"vimdoc",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
