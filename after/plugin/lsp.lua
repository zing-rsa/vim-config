local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  vim.keymap.set('n', 'H', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
end)

lsp.setup()

--lsp.new_server({
--  name = 'aiken',
--  cmd = {'aiken', 'lsp'},
--  filetypes = {'aiken'},
--  root_dir = function()
--    return lsp.dir.find_first({'aiken.toml'})
--  end
--})

local lsp_configurations = require('lspconfig.configs')

if not lsp_configurations.aiken_lsp then
  lsp_configurations.aiken_lsp = {
    default_config = {
      name = 'aiken-lsp',
      cmd = {'aiken', 'lsp'},
      filetypes = {'aiken'},
      root_dir = require('lspconfig.util').root_pattern('aiken.toml')
    }
  }
end

require('lspconfig').aiken_lsp.setup({})
