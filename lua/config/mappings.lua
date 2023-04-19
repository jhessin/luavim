-- import vimp
local vimp = require('vimp')

-- Clear all mappings for a clean slate!
-- vim.cmd('mapclear')
--
function openFile(file)
  if vim.g.vscode then
    vim.fn.call('VSCodeExtensionNotify', {
      'open-file',
      file
    })
  else
    vim.cmd.edit(vim.fn.expand(file))
  end
end

-- Quickly edit/source the vimrc {{{
vimp.nnoremap('<leader>ev', function ()
	openFile(vim.fn.expand('$MYVIMRC'))
end)
-- vimp.nnoremap('<leader>sv', '<cmd>source $MYVIMRC<cr>')
vimp.nnoremap('<leader>sv', function ()
  -- Remove all previously added vimpeccable maps
  vimp.unmap_all()
  -- Unload the lua namespace so that the next time require('config.X') is called
  -- it will reload the File
  require("config.util").unload_lua_namespace('config')
  -- Make sure all open buffers are saved
  vim.cmd('silent wa')
  -- Execute our vimrc lua file again to add back our maps
  -- dofile(vim.fn.stdpath('config') .. '/init.lua')
  dofile(vim.fn.expand('$MYVIMRC'))

  print('Reloaded vimrc!')
end
)
-- }}}

-- disable arrow keys in normal/inssert mode {{{
vim.keymap.set({'n', 'i'}, '<up>', '<nop')
vim.keymap.set({'n', 'i'}, '<down>', '<nop')
vim.keymap.set({'n', 'i'}, '<left>', '<nop')
vim.keymap.set({'n', 'i'}, '<right>', '<nop')
-- }}}

-- always global moves {{{
vim.keymap.set( {'n', 'v'}, 'j', 'gj')
vim.keymap.set( {'n', 'v'}, 'k', 'gk')
-- }}}

-- map tab to move between windows {{{
vim.keymap.set('n', '<tab>', '<c-w><c-w>')
-- }}}

-- map gt to Goto next Tab(buffer) {{{
-- gf is already Goto highlighted File
vim.keymap.set('n', 'gt', '<cmd>bn<cr>', { silent = true })
vim.keymap.set('n', 'gT', '<cmd>bp<cr>', { silent = true })
-- }}}

-- vim:fdm=marker:fdl=0
