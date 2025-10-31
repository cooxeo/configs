require("cooxeo.remap")
require("cooxeo.set")
require("cooxeo.lsp")
require("cooxeo.todo")
require("cooxeo.markdown")

local toggleterm = require("cooxeo.toggleterm")
toggleterm.setup()

require("ibl").setup {
    indent = { char = "│" },
    scope = {
        enabled = false,
    },
}

vim.opt.clipboard = "unnamedplus"










