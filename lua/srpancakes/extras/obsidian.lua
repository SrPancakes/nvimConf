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
        path = '~/second-brain/personal',
      },
      {
        name = 'work',
        path = '~/second-brain/work',
      },
      {
        name = 'college',
        path = '~/second-brain/college',
      },
      {
        name = 'projects',
        path = '~/second-brain/projects',
      },
      {
        name = 'scratch',
        path = '~/second-brain/scratch',
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
