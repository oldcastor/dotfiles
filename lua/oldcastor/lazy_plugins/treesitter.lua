return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}



--{
--  "nvim-treesitter/nvim-treesitter",
--  opts = {
--    ensure_installed = {
--      'lua',
--      "bash",
--      'vim',
--      'vimdoc',
--    },
--  },
--  config = function(_, opts)
----    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--
----    parser_config.blade = {
----      install_info = {
----        url = "https://github.com/EmranMR/tree-sitter-blade",
----        files = { "src/parser.c" },
----        branch = "main",
----      },
----      filetype = "blade",
----    }
----
----    vim.filetype.add({
----      pattern = {
----        [".*%.blade%.php"] = "blade",
----      },
----    })
--
--    require("nvim-treesitter.configs").setup(opts)
--  end,
--}
