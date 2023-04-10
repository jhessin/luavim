-- Set the leaders because they are used for plugins {{{
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
-- }}}

-- load mappings first
require('config.plugged')
require('config.mappings')
require('config.autocommands')
require('config.airline_config')
require('config.lsp_config')
require('config.interface')
require('config.abbreviations')
require('config.formatting')
-- require('config.coc_settings')



-- vim:fdm=marker:fdl=0
