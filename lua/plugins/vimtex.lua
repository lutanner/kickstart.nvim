return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- Detect operating system
    vim.g.vimtex_fold_enabled = 1
    local is_mac = vim.fn.has 'macunix' == 1
    -- local is_linux = vim.fn.has 'linux' == 1         -- unused
    -- Set PDF viewer based on OS
    local viewer = 'zathura' -- default for Linu
    if is_mac then
      viewer = 'skim' -- Use Skim on macOS
    end

    vim.g.vimtex_view_method = viewer

    if is_mac then
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_activate = 1
    end
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_view_automatic = 1
  end,
  keys = {
    { '<leader>lc', '<cmd>VimtexCompile<cr>', desc = 'LaTeX: Compile' },
    { '<leader>ll', '<cmd>VimtexCompileToggle<cr>', desc = 'LaTeX: Auto Compile toggle' },
    { '<leader>lv', '<cmd>VimtexView<cr>', desc = 'LaTeX: View PDF' },
    { '<leader>lk', '<cmd>VimtexClean<cr>', desc = 'LaTeX: Clean build files' },
    { '<leader>le', '<cmd>VimtexErrors<cr>', desc = 'LaTeX: Show compilation errors' },
  },
}
