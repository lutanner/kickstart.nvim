-- ~/.config/nvim/lua/plugins/harpoon.lua
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- Use harpoon2 (latest version)
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Required dependency
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {
      settings = {
        save_on_toggle = true, -- Saves when you close the menu
        save_on_change = true, -- Saves on every add/remove
      },
    } -- MUST call setup!

    -- Basic keymaps
    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Harpoon: Add file' })
    vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon: Toggle menu' })

    -- Quick navigation (numbers 1-4)
    vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end, { desc = 'Harpoon: File 1' })
    vim.keymap.set('n', '<C-t>', function() harpoon:list():select(2) end, { desc = 'Harpoon: File 2' })
    vim.keymap.set('n', '<C-n>', function() harpoon:list():select(3) end, { desc = 'Harpoon: File 3' })
    vim.keymap.set('n', '<C-s>', function() harpoon:list():select(4) end, { desc = 'Harpoon: File 4' })

    -- Navigation between files
    vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end, { desc = 'Harpoon: Previous file' })
    vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end, { desc = 'Harpoon: Next file' })
  end,
}
