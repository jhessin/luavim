-- import vimp
local vimp = require('vimp')

-- Clear all mappings for a clean slate!
-- vim.cmd('mapclear')
--
-- Function for opening files {{{
function openFile(file)
  if vim.g.vscode then
    vim.call('VSCodeExtensionNotify', {
      'open-file',
      file
    })
  else
    vim.cmd.edit(vim.fn.expand(file))
  end
end
-- }}}

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
--
-- VSCode specific bindings {{{
if vim.g.vscode then
  vimp.nnoremap('zM', 
  function ()
    vim.call('VSCodeNotify', 'editor.foldAll')
  end)
  vimp.nnoremap('zR', function ()
    vim.call('VSCodeNotify', 'editor.unfoldAll')
  end)
  vimp.nnoremap('zc', function ()
    vim.call('VSCodeNotify', 'editor.fold')
  end)
  vimp.nnoremap('zC', function ()
    vim.call('VSCodeNotify', 'editor.foldRecursively')
  end)
  vimp.nnoremap('zo', function ()
    vim.call('VSCodeNotify', 'editor.unfold')
  end)
  vimp.nnoremap('zO', function ()
    vim.call('VSCodeNotify', 'editor.unfoldRecursively')
  end)
  vimp.nnoremap('za', function ()
    vim.call('VSCodeNotify', 'editor.toggleFold')
  end)
end
-- }}}

-- always global moves {{{
if vim.g.vscode then
  vim.keymap.set( {'n', 'v'}, 'j', function ()
    vim.call('VSCodeNotify', 'cursorDown')
  end )
  vim.keymap.set( {'n', 'v'}, 'k', function ()
    vim.call('VSCodeNotify', 'cursorUp')
  end )
else
vim.keymap.set( {'n', 'v'}, 'j', 'gj')
vim.keymap.set( {'n', 'v'}, 'k', 'gk')
end
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
