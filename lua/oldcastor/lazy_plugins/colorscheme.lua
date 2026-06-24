return
--{
--    "gmr458/vscode_modern_theme.nvim",
--    lazy = false,
--    priority = 1000,
--    config = function()
--        require("vscode_modern").setup({
--            cursorline = true,
--            transparent_background = false,
--            nvim_tree_darker = true,
--        })
--        vim.cmd.colorscheme("vscode_modern")
--    end,
--}

--{
--  'olivercederborg/poimandres.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require('poimandres').setup {
--      bold_vert_split = false,          -- use bold vertical separators
--      dim_nc_background = true,         -- dim 'non-current' window backgrounds
--      disable_background = true,        -- disable background
--      disable_float_background = false, -- disable background for floats
--      disable_italics = false,          -- disable italics
--    }
--  end,
--
--  -- optionally set the colorscheme within lazy config
--  init = function()
--    vim.cmd('hi clear')
--    vim.cmd("colorscheme poimandres")
--  end
--}



--{
--  'AlexvZyl/nordic.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    local n = require('nordic')
--    n.setup({
--      -- This callback can be used to override the colors used in the palette.
--      on_palette = function(palette) return palette end,
--      -- Enable bold keywords.
--      bold_keywords = false,
--      -- Enable italic comments.
--      italic_comments = true,
--      -- Enable general editor background transparency.
--      transparent_bg = true,
--      -- Enable brighter float border.
--      bright_border = true,
--      -- Reduce the overall amount of blue in the theme (diverges from base Nord).
--      reduced_blue = true,
--      -- Swap the dark background with the normal one.
--      swap_backgrounds = false,
--      -- Override the styling of any highlight group.
--      override = {},
--      -- Cursorline options.  Also includes visual/selection.
--      cursorline = {
--        -- Bold font in cursorline.
--        bold = false,
--        -- Bold cursorline number.
--        bold_number = true,
--        -- Available styles: 'dark', 'light'.
--        theme = 'dark',
--        -- Blending the cursorline bg with the buffer bg.
--        blend = 0.65,
--      },
--      noice = {
--        -- Available styles: `classic`, `flat`.
--        style = 'classic',
--      },
--      telescope = {
--        -- Available styles: `classic`, `flat`.
--        style = 'flat',
--      },
--      leap = {
--        -- Dims the backdrop when using leap.
--        dim_backdrop = false,
--      },
--      ts_context = {
--        -- Enables dark background for treesitter-context window
--        dark_background = true,
--      }
--    })
--    n.load()
--  end
--}

--{
--  'rebelot/kanagawa.nvim',
--  config = function()
--    -- Default options:
--    require('kanagawa').setup({
--      compile = false,  -- enable compiling the colorscheme
--      undercurl = true, -- enable undercurls
--      commentStyle = { italic = true },
--      functionStyle = {},
--      keywordStyle = { italic = true },
--      statementStyle = { bold = true },
--      typeStyle = {},
--      transparent = false,   -- do not set background color
--      dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
--      terminalColors = true, -- define vim.g.terminal_color_{0,17}
--      colors = {             -- add/modify theme and palette colors
--        palette = {},
--        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--      },
--      overrides = function(colors) -- add/modify highlights
--        return {}
--      end,
--      theme = "dragon",  -- Load "wave" theme when 'background' option is not set
--      background = {     -- map the value of 'background' option to a theme
--        dark = "dragon", -- try "dragon" !
--        light = "lotus"
--      },
--    })
--
--    -- setup must be called before loading
--    vim.cmd("colorscheme kanagawa")
--  end
--}



--{
--  "sho-87/kanagawa-paper.nvim",
--  lazy = false,
--  priority = 1000,
--  opts = {},
--  config = function()
--    require('lualine').setup({
--      options = {
--        theme = 'kanagawa-paper'
--      }
--    })
--    vim.o.background = 'dark'
--    vim.cmd('colorscheme kanagawa-paper')
--  end
--}

{
  'Mofiqul/vscode.nvim',
  config = function()
    vim.o.background = 'dark'
    --local c = require('vscode.colors').get_colors()
    local t = require('vscode')
    t.setup({
      transparent = true,
      italic_comments = false,
    })
    t.load()
  end
}
