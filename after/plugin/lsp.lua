local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = true },
      telemetry = { enable = false },
    },
  },
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
--local luasnip = require 'luasnip'
--cmp.setup {
--    snippet = {
--        expand = function (args)
--            luasnip.lsp_expand(args.body)
--        end
--    }
--}

local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
})


lsp.set_preferences({ sign_icons = {} })

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.configure('lua_ls', {
  --single_file_support = false,
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' }
      }
    }
  }
})
lsp.configure('intelephense', {
  setup = {
    settings = {
      intelephense = {
        telemetry = {
          enable = false
        }
      }
    }
  }
})


lsp.configure('html',
  {
    filetypes =
    {
      'html', 'php'
    }
  })
lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "<leader>vo", function() vim.lsp.omnifunc() end, opts)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
lsp.setup()
vim.diagnostic.config({
  virtual_text = true
})
