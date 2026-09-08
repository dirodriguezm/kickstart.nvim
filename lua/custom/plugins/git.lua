vim.pack.add {
  'https://github.com/NeogitOrg/neogit',
  'https://github.com/sindrets/diffview.nvim',
}

require('neogit').setup({})
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Open Neogit UI' })
local function toggle_diffview()
  local lib = require('diffview.lib')
  local is_open = vim.iter(vim.api.nvim_list_tabpages()):any(function(tab)
    return lib.tabpage_to_view(tab) ~= nil
  end)
  if is_open then
    vim.cmd 'DiffviewClose'
  else
    vim.cmd 'DiffviewOpen'
  end
end

vim.keymap.set('n', '<leader>gd', toggle_diffview, { desc = 'Toggle DiffView' })
