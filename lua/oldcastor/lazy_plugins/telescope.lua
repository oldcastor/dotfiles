return
{
  'nvim-telescope/telescope.nvim',
  --tag = '0.1.x',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    --vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)

    vim.keymap.set('n', '<leader>bb', builtin.buffers, {})

    local actions = require('telescope.actions')

    require('telescope').setup {
      pickers = {
        buffers = {
          mappings = {
            i = {
              ["<C-d>"] = actions.delete_buffer + actions.move_to_top
            },
            n = {
              ["<C-d>"] = actions.delete_buffer + actions.move_to_top
            }
          }
        },
      }
    }
  end
}
