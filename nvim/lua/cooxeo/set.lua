
vim.opt.nu = true

vim.opt.relativenumber = true

-- netrw settings
-- vim.g.netrw_banner = 0             -- Hide banner
-- vim.g.netrw_liststyle = 3            -- Tree-style listing

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.guicursor = {
  "n-v-c:block",                 -- Normal, Visual, Command: solid block
  "i:hor25-blinkwait300-blinkon200-blinkoff150", -- Insert: underline (20%) with blinking
}

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('data') .. '/undo'
vim.fn.mkdir(vim.opt.undodir:get()[1], "p")


vim.opt.cmdheight = 0            -- Hide separate command line unless used (Neovim 0.9+)
vim.opt.showcmdloc = "statusline" -- Show command input in the status line
vim.opt.cmdwinheight = 1          -- Minimal height for command window
vim.opt.cmdheight = 0
vim.opt.shortmess:append("F")  -- Hide "written" messages faster
vim.opt.laststatus = 3         -- Single global statusline (important)


vim.api.nvim_set_hl(0, "StatusLine", { fg = "#E0E0E0", bg = "NONE" })      -- main statusline
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#E0E0E0", bg = "NONE" })   -- inactive statusline
vim.api.nvim_set_hl(0, "MsgArea", { fg = "#E0E0E0", bg = "NONE" })        -- messages & commands
vim.api.nvim_set_hl(0, "Cmdline", { fg = "#E0E0E0", bg = "NONE" })        -- command-line input


vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        vim.opt_local.formatoptions:remove({"r", "o"})
    end,
})








