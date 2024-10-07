return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "thin",
			diagnostics = "nvim_lsp",
			always_show_bufferline = false,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					separator = true,
				},
			},
			custom_filter = function(buf_number)
				local buf_name = vim.fn.bufname(buf_number)
				-- Check if the buffer name contains 'NvimTree_' or is empty
				if buf_name:match("NvimTree_") or buf_name == nil or buf_name == "" then
					return false
				end
				return true
			end,
		},
	},
}
