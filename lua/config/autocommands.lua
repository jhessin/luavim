local main = vim.api.nvim_create_augroup('main', { clear = true })

-- Autocmds go here {{{
vim.api.nvim_create_autocmd({
	'BufNew',
	'BufRead',
},{
	group = main,
	pattern = '*.xaml',
	command = 'setfiletype xml',
})
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function() vim.highlight.on_yank() end,
	desc = "Briefly highlight yanked text",
	group = main,
})
-- }}}

-- vim:fdm=marker:fdl=0
