require 'nvim-treesitter.install'.prefer_git = false

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "python", "c", "lua" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
