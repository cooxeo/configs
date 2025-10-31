-- lua/cooxeo/treesitter.lua

require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua", "vim", "javascript", "python", "tsx", "html", "css", "bash" },

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = { "markdown" },
  },
}

