local M = {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  ft = 'norg',
  cmd = 'Neorg',
  event = 'VeryLazy',
  lazy = 'false',
  depencencies = { 'nvim-lua/plenary.nvim' },
}

function M.config()
  require('neorg').setup {
    load = {
      ['core.defaults'] = {}, -- Load all the default behaviours
      ['core.concealer'] = {}, -- Allows for use of icons
      ['core.summary'] = {},
      ['core.completion'] = {
        config = {
          engine = 'nvim-cmp',
        },
      },
      ['core.dirman'] = { -- Manage your directories with Neorg
        config = {
          workspaces = {
            notes = '~/notes',
            personal = '~/notes/personal',
            projects = '~/notes/projects',
            college = '~/notes/college',
            work = '~/notes/work',
          },
        },
      },
    },
  }
end

return M
