---
--- Gruvbox flavor for y9nika.nvim, using the morhetz/gruvbox palette:
--- https://github.com/morhetz/gruvbox
---

vim.cmd 'hi clear'

-- y9nika relies on treesitter highlighting only, so Vim's syntax highlighting stays off.
vim.cmd 'syntax off'

vim.g.colors_name = 'y9nika-gruvbox'

-- Pick the palette from 'background', so `:set background=light|dark` switches flavors.
local theme
if vim.o.background == 'light' then
  theme = {
    background = '#fbf1c7', -- bg0: light background
    foreground = '#3c3836', -- fg1: dark text
    primary = '#458588', -- blue: declarations (functions, types, globals)
    secondary = '#79740e', -- green: locals, strings, numbers, booleans
    muted = '#7c6f64', -- gray: punctuation and keywords
    marker = '#b57614', -- yellow: comments and diagnostics
  }
else
  theme = {
    background = '#282828', -- bg0: dark background
    foreground = '#ebdbb2', -- fg1: light text
    primary = '#83a598', -- blue: declarations (functions, types, globals)
    secondary = '#b8bb26', -- green: locals, strings, numbers, booleans
    muted = '#928374', -- gray: punctuation and keywords
    marker = '#fabd2f', -- yellow: comments and diagnostics
  }
end

require('y9nika.core').apply(theme)
