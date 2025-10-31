
-- Auto save & restore Neovim sessions
vim.opt.sessionoptions = "buffers,curdir,tabpages,winsize"

local session_file = vim.fn.expand("~/.local/share/nvim/session.vim")

-- Save session automatically when exiting Neovim
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    vim.cmd("mksession! " .. session_file)
  end,
})

-- Auto load session when starting Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.filereadable(session_file) == 1 then
      vim.cmd("source " .. session_file)
    end
  end,
})
