local paq = require('paq')

paq:setup { verbose = true } {
	'savq/paq-nvim', 			-- Let Paq manage itself
	--------------------------------------------------------------------
	-- LSP Support {{{
	{'VonHeikemen/lsp-zero.nvim', branch = 'v1.x'},
	'neovim/nvim-lspconfig', 		-- manage lsp's (Required)
	{					-- Optional
		'williamboman/mason.nvim',
		run = function()
			pcall(vim.cmd, 'MasonUpdate')
		end,
	},
	{'williamboman/mason-lspconfig.nvim'}, 	-- Optional

	-- Autocompletion Engine
	'hrsh7th/nvim-cmp',			-- Required
	'hrsh7th/cmp-nvim-lsp',			-- Required
	'hrsh7th/cmp-buffer', 			-- Optional
	'hrsh7th/cmp-path', 			-- Optional
	'saadparwaiz1/cmp_luasnip', 		-- Optional
	'hrsh7th/cmp-nvim-lua', 		-- Optional

	-- Snippets
	'L3MON4D3/LuaSnip',			-- Required
	'rafamadriz/friendly-snippets',		-- Optional
	-- }}}
	--
	-- Quality of life {{{
	'tpope/vim-commentary',			-- Comment stuff out
	'jiangmiao/auto-pairs',			-- automatic closing of tags
	'MattesGroeger/vim-bookmarks',		-- a bookmark manager
	'svermeulen/vimpeccable', 		-- quick keybinds
	'dockyard/vim-easydir', 		-- auto create and manage directories
	'vitalk/vim-shebang', 			-- auto detect filetype by shebang line
	'tpope/vim-surround',			-- manage surrounding tokens
	'farmergreg/vim-lastplace',		-- restore cursor position intelligently
	'vim-scripts/loremipsum', 		-- generate loremipsum text
	'Chiel92/vim-autoformat',		-- Autoformat various files
	-- }}}
	--
	-- Visual plugins {{{
	'vim-airline/vim-airline',		-- Powerline
	'vim-airline/vim-airline-themes',

  -- colorscheme
	'flazz/vim-colorschemes',		-- extra colorschemes
  'joshdick/onedark.vim',
	-- }}}
	--
	-- Autocomplete Tools {{{
	-- { 'neoclide/coc.nvim', branch = 'master', run = 'npm install --frozen-lockfile' },
	-- }}}

}

-- paq:sync()

-- vim:fdm=marker:fdl=0
