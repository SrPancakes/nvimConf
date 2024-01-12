local M = {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  }
}

function M.config()
   require('obsidian').setup {
    workspaces = {
      {
        name = 'personal',
        path = '~/notes/personal',
      },
      {
        name = 'work',
        path = '~/notes/work',
      },
      {
        name = 'college',
        path = '~/notes/college',
      },
      {
        name = 'projects',
        path = '~/notes/projects',
      },
      {
        name = 'scratch',
        path = '~/notes/scratch',
      },
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
      new_notes_location = 'current_dir',
      prepend_note_id = true,
      prepend_note_path = false,
      use_path_only = false,
    },
    
    templates = {
      subdir = 'Templates',
      date_format = '%d-%m-%Y',
      time_format = '%H:%M',
    }
  }
end

return M
