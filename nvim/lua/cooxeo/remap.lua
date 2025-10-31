-- Leader
vim.g.mapleader = " "

-- Open netrw
-- vim.keymap.set("n", "fe", vim.cmd.Ex)

vim.keymap.set("n", "fe", function()
    -- Hide executable files (*.exe, *.out)
    vim.g.netrw_list_hide = [[\v(\.exe$|\.out$|\.o$)]]
    vim.g.netrw_hide = 1
    -- Open netrw
    vim.cmd.Ex()
end, { noremap = true, silent = true })


-- Escape insert mode with Ctrl-c
-- vim.keymap.set("i", "<C-i>", "<Esc>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- File explorers
-- vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- Splits
vim.keymap.set("n", "ss", ":split<CR>")
vim.keymap.set("n", "s[", ":vsplit<CR>")


-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Terminal mode:
vim.keymap.set("t", "ii", "<C-\\><C-N>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "nn", "<C-w>w")

-- Resize vertical splits
vim.keymap.set('n', '<Right>',  '<cmd>vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Left>', '<cmd>vertical resize +2<CR>', opts)

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

vim.keymap.set("n", "<leader>o", "i<CR><Up><Esc>o", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-O>', '<Esc>O', { noremap = true, silent = true })
vim.keymap.set('i', '<C-l>', '<Esc>o', { noremap = true, silent = true })


-- Delete last word in the line
vim.keymap.set("n", "<leader>-", function()
  local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()

  -- Remove trailing spaces first
  line = line:gsub("%s+$", "")

  -- Remove last word (everything after last space)
  line = line:gsub("%s+%S+$", "")

  vim.api.nvim_set_current_line(line)
  vim.api.nvim_win_set_cursor(0, { row, #line }) -- move cursor to end
end, { desc = "Delete last word in line" })

-- Normal mode mappings
vim.keymap.set('n', '9', '0', { noremap = true, silent = true })  -- 9 goes to beginning
vim.keymap.set('n', '0', '$', { noremap = true, silent = true })  -- 0 goes to end

-- Delete inner word with <leader>d
vim.keymap.set("n", "<leader>d", "diw", { noremap = true, silent = true })

-- Change inner word with <leader>c (optional)
vim.keymap.set("n", "<leader>c", "ciw", { noremap = true, silent = true })

-- Normal mode: <leader>/ works like gcc
vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment" })

-- Visual mode: <leader>/ works like gc
vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "Toggle comment" })

-- Select current word with <leader>s
vim.keymap.set("n", "<leader>s", "viw", { noremap = true, silent = true })

vim.keymap.set("n", "au", "yiw", { desc = "Yank inner word" })

-- Keymap to insert C++ template
vim.keymap.set("n", "<A-1>", ":0r ~/code/clutter/cpp_template.cpp<CR>", { desc = "Insert C++ template" })
vim.keymap.set("n", "<A-2>", ":0r ~/code/clutter/cpp_template1.cpp<CR>", { desc = "Insert C++ template" })

