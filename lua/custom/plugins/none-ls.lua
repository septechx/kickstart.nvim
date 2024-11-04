return {
  'nvimtools/none-ls.nvim',
  event = 'VeryLazy',
  opts = function()
    return require 'custom.config.null-ls'
  end,
}
