require "user.alpha"
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.treesitter"
require "user.cmp"
require "user.lsp"
require "user.lualine"
require "user.bufferline"
require "user.comment"
require "user.autopairs"
require "user.telescope"
require "user.gitsigns"
require "user.nvim-tree"
require "user.toggleterm"
require "user.impatient"
require "user.indentline"
require "user.project"

local lang_maps = {
	cpp = { build = "g++ % -o %:r", exec = "./%:r" },
	python = { exec = "python %" },
	sh = { exec = "./%" },
}
for lang, data in pairs(lang_maps) do
	if data.build ~= nil then
		vim.api.nvim_create_autocmd(
			"FileType",
			{ command = "nnoremap <Leader>b :!" .. data.build .. "<CR>", pattern = lang }
		)
	end
	vim.api.nvim_create_autocmd(
		"FileType",
		{ command = "nnoremap <Leader>e :split<CR>:terminal " .. data.exec .. "<CR>", pattern = lang }
	)
end
