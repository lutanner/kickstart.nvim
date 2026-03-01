-- ~/.config/nvim/lua/plugins/toggleterm.lua
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 15,
      -- This is the key! Set your open mapping to <leader>tt
      open_mapping = [[<leader>tt]], -- Space + t + t
      insert_mappings = false,
      direction = 'float',
      float_opts = { border = 'curved' },
    }

    -- Optional: Additional terminal layouts
    vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm size=10 direction=horizontal<CR>', { desc = 'Terminal: Horizontal' })
  end,
}
