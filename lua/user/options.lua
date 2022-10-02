local options = {
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	ignorecase = true, -- ignore case in search patterns
	fileencoding = "utf-8", -- the encoding written to a file
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	scrolloff = 8, -- is one of my fav
	sidescrolloff = 8,
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	tabstop = 2, -- insert 2 spaces for a tab
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	mouse = "a", -- allow the mouse to be used in neovim
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	termguicolors = true,                    -- set term gui colors (most terminals support this)
  showmode = false,
	updatetime = 100, -- faster completion (4000ms default)
	cursorline = true, -- highlight the current line
	-- undofile = true, -- enable persistent undo
}


for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]] -- make word1-word2 one word
