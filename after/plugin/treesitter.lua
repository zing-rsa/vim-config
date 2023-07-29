require 'nvim-treesitter.install'.prefer_git = false

--local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--
--parser_config.aiken = {
--  install_info = {
--    url = "https://github.com/aiken-lang/tree-sitter-aiken", -- local path or git repo
--    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
--  }
--}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "python", "c", "lua" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
