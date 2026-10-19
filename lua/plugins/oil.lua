-- g. -> show/hide hidden files
return {
        'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	config = function()
		require("oil").setup({
			keymaps = {
				["gs"] = false,
			},
		})
		vim.api.nvim_create_user_command("O", "Oil", {})
		vim.keymap.set("n", "<space>o", "<cmd>Oil<cr>", {
			desc = "Open Oil",
		})
	end,
}
