return {
  'archive.nvim',
  lazy = true,
  ft = 'markdown',
  dir = '~/.config/nvim/lua/archive-nvim/',
  name = 'archive.nvim',
  config = function()
    require('archive-nvim').setup()
  end,
}
