return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    'BufReadPre /run/media/sep/BIGSSD/obsidian/Deez\\ Notes/*.md',
    'BufNewFile /run/media/sep/BIGSSD/obsidian/Deez\\ Notes/*.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '/run/media/sep/BIGSSD/obsidian/Deez\\ Notes',
      },
    },

    daily_notes = {
      folder = 'Daily\\ Notes',
    },
  },
}
