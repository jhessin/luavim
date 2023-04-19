-- Format options {{{
-- See ':h fo-table' for more info on these options.
vim.o.modeline = true
vim.o.relativenumber = false
vim.o.number = true
vim.o.wrap = true
vim.o.linebreak = true
vim.o.textwidth = 80

-- Auto-wrap text using textwidth
vim.opt.formatoptions:append('t')

-- Auto-wrap comments using textwidth, inserting the current comment leader
vim.opt.formatoptions:append('c')

-- No comment leader after hitting enter
vim.opt.formatoptions:remove('r')
-- No comment leader after hitting 'o' or 'O'
vim.opt.formatoptions:remove('o')

-- Allow formatting of comments with 'gq'
vim.opt.formatoptions:append('q')

-- format paragraphs
vim.opt.formatoptions:append('c')

-- remove comment leaders when joining lines
vim.opt.formatoptions:append('j')
-- }}}

-- Old look and feel settings {{{

vim.cmd('syntax enable')
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.cmd.colorscheme 'solarized8_dark'
vim.o.wildmenu = true
vim.o.lazyredraw = true
vim.o.updatetime = 300
vim.o.hidden = true                   -- Open other files if this one isn't saved
vim.o.inccommand = 'split'            -- highlight substitute searches
vim.o.showcmd = true                  -- show command in bottom bar
vim.o.cursorline = true

vim.cmd.hi('CursorLine cterm=underline')
vim.cmd.hi('MatchParen guifg=red')
vim.opt.signcolumn = 'yes'            -- Always show the sign column
-- }}}

-- Tab (indenting) Options {{{
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.showbreak = '↪'
vim.o.list = true
vim.opt.listchars = {
  tab = '| ',
  eol = '↲',
  nbsp = '␣',
  trail = '•',
  extends = '⟩',
  precedes = '⟨',
}
-- }}}

-- vim:fdm=marker:fdl=0
