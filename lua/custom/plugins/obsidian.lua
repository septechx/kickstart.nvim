return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = 'Deez Notes 2',
        path = '/run/media/sep/BIGSSD/obsidian/Deez Notes 2',
      },
    },

    legacy_commands = false,

    daily_notes = {
      folder = 'Daily Notes',
    },
  },
  config = function(_, opts)
    require('obsidian').setup(opts)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'markdown',
      callback = function()
        vim.opt_local.conceallevel = 1
      end,
    })
  end,
}
