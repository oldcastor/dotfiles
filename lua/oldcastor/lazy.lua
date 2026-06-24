local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not present
if not uv.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  spec = 'oldcastor.lazy_plugins',
  change_detection = { notify = false }
})
--{
--  'vscode.colors' 
--  {
--    'nvim.treesitter',
--    build = function()
--      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
--      ts_update()
--    end
--  }
--  , {
--  'nvim-telescope/telescope.nvim',
--  version = '0.1.x',
--  dependencies = { { 'nvim-lua/plenary.nvim' } }
--}
--, { 'nvim-treesitter/nvim-treesitter-context' {
--    'windwp/nvim-autopairs',
--    event = "InsertEnter",
--    config = true
--    -- use opts = {} for passing setup options
--    -- this is equalent to setup({}) function
--}}
--, { 'mbbill.undotree' }
--, { 'tpope/vim-fugitive' }
--, { 'theprimeagen/harpoon' }
--, {
--  'VonHeikemen/lsp-zero.nvim',
--  branch = 'v2.x',
--  dependencies = {
--    -- LSP Support
--    { 'neovim/nvim-lspconfig' }, -- Required
--    {
--      -- Optional
--      'williamboman/mason.nvim',
--      build = function()
--        pcall(vim.cmd, 'MasonUpdate')
--      end,
--    },
--    { 'williamboman/mason-lspconfig.nvim' }, -- Optional
--
--    -- Autocompletion
--    { 'hrsh7th/nvim-cmp' },     -- Required
--    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
--    { 'L3MON4D3/LuaSnip' },     -- Required
--  }
--}
--})



--
--  use 'wbthomason/packer.nvim'
--
--  use {
--    'nvim-telescope/telescope.nvim', version = '0.1.x',
--    dependencies = { { 'nvim-lua/plenary.nvim' } }
--  }
--
--  use { "windwp/nvim-autopairs", }
--
--  use 'Mofiqul/vscode.nvim'
--  --use 'folke/tokyonight.nvim'
--
--  use { "phpactor/phpactor", disable = true }
--
--  use {
--    'nvim-treesitter/nvim-treesitter',
--    build = function()
--      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
--      ts_update()
--    end,
--  }
--  use('nvim-treesitter/nvim-treesitter-context')
--  --
--  --    use('nvim-treesitter/playground')
--
--  use('mbbill/undotree')
--
--  use('tpope/vim-fugitive')
--
--  use('theprimeagen/harpoon')
--
--  use {
--    'VonHeikemen/lsp-zero.nvim',
--    branch = 'v2.x',
--    dependencies = {
--      -- LSP Support
--      { 'neovim/nvim-lspconfig' },       -- Required
--      {
--        -- Optional
--        'williamboman/mason.nvim',
--        build = function()
--          pcall(vim.cmd, 'MasonUpdate')
--        end,
--      },
--      { 'williamboman/mason-lspconfig.nvim' },       -- Optional
--
--      -- Autocompletion
--      { 'hrsh7th/nvim-cmp' },           -- Required
--      { 'hrsh7th/cmp-nvim-lsp' },       -- Required
--      { 'L3MON4D3/LuaSnip' },           -- Required
--    }
--  }
