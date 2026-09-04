vim.pack.add { 'https://github.com/supermaven-inc/supermaven-nvim', 'https://github.com/Huijiro/blink-cmp-supermaven' }

require('supermaven-nvim').setup {
  disable_inline_completion = true, -- disables inline completion for use with cmp
  disable_keymaps = true, -- disables built in keymaps for more manual control
}
