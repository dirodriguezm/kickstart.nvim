-- GitHub Copilot via copilot.lua. Blink consumes it through fang2hou/blink-copilot,
-- which is configured in init.lua.
vim.pack.add {
  { src = 'https://github.com/zbirenbaum/copilot.lua', version = vim.version.range '3.*' },
}

require('copilot').setup {
  panel = { enabled = false },
  suggestion = { enabled = false },
}

-- Authenticate once with `:Copilot auth`.
