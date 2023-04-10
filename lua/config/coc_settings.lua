local vimp = require('vimp')

-- coc (goto) shortcuts {{{
vimp.nmap({ 'silent' }, 'gd', '<Plug>(coc-definition)')
vimp.nmap({ 'silent' }, 'gy', '<Plug>(coc-type-definition)')
vimp.nmap({ 'silent' }, 'gi', '<Plug>(coc-implementation)')
vimp.nmap({ 'silent' }, 'gr', '<Plug>(coc-references)')
vimp.nmap({ 'silent' }, '<F2>', '<Plug>(coc-rename)')
-- }}}

-- disable mapping in go (handled by coc) {{{
vim.api.nvim_set_var('go_def_mapping_enabled', 0)	
-- }}}

-- Fix syntax highlight for Coc plugin floating errors {{{
vim.cmd('hi CocErrorFloat guifg=Magenta guibg=Magenta')
-- }}}
--
-- Other shortcuts {{{
vimp.nnoremap({ 'silent' }, '<F6>', ':CocList diagnostics<CR>')
vimp.nnoremap({ 'silent' }, '<F8>', ':call CocAction(\'diagnosticNext\')<CR>')
vimp.nmap('<leader>ac', '<Plug>(coc-codeaction)')
-- Apply Autofix to problem on the current line.
vimp.nmap('<leader>qf', '<Plug>(coc-fix-current)')
vimp.nnoremap({ 'silent' }, '<leader>se', ':CocCommand snippets.editSnippets<CR>')
vimp.nnoremap({ 'silent' }, '<leader><CR>', ':CocAction<CR>')
-- }}}
--
-- Default extensions to load automatically {{{
vim.api.nvim_set_var('coc_global_extensions', { 
	'coc-actions',
	'coc-css',
	'coc-eslint',
	'coc-highlight',
	'coc-html',
	'coc-html-css-support',
	'coc-json',
	'coc-lists',
	'coc-marketplace',
	'coc-prettier',
	'coc-snippets',
	'coc-tsserver',
	'coc-lua',
})
-- }}}
--
-- Use coc mappings from one filetype to another {{{
vim.api.nvim_set_var('coc_filetype_map', {
	[ 'html.handlebars' ] = 'html',
	wxss = 'css',
})
-- }}}

-- vim:fdm=marker:fdl=0
