return {
  'saecki/crates.nvim',
  ft = { 'toml' },
  config = function()
    require('crates').setup {
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    }
  end,
}
