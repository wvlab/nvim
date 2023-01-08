require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "lua",
      "c",
      "cpp",
      "javascript",
      "typescript",
      "elixir",
      "erlang",
      "zig",
      "rust",
  },

  sync_install = true,

  auto_install = true,

  ignore_install = { },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
