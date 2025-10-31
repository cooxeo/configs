-- lua/cooxeo/toggleterm.lua
local M = {}

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Terminal buffers
vim.g.hterm_buf = nil
vim.g.vterm_buf = nil

-- Sizes
local hterm_height = 20
local vterm_width = 80

-- Horizontal terminal toggle (bottom)
function M.toggle_horizontal_term()
    local api = vim.api

    -- Close if visible
    if vim.g.hterm_buf and api.nvim_buf_is_valid(vim.g.hterm_buf) then
        for _, win in ipairs(api.nvim_list_wins()) do
            if api.nvim_win_get_buf(win) == vim.g.hterm_buf then
                if vim.fn.mode() == 't' then vim.cmd('stopinsert') end
                vim.cmd('close')
                return
            end
        end
    end

    -- Open at bottom
    vim.cmd('botright split')
    vim.cmd('resize ' .. hterm_height)
    if vim.g.hterm_buf and api.nvim_buf_is_valid(vim.g.hterm_buf) then
        api.nvim_set_current_buf(vim.g.hterm_buf)
    else
        vim.cmd('terminal')
        vim.g.hterm_buf = api.nvim_get_current_buf()
        vim.cmd('setlocal laststatus=0')
    end
    vim.cmd('startinsert')
end

-- Vertical terminal toggle (right)
function M.toggle_vertical_term()
    local api = vim.api

    -- Close if visible
    if vim.g.vterm_buf and api.nvim_buf_is_valid(vim.g.vterm_buf) then
        for _, win in ipairs(api.nvim_list_wins()) do
            if api.nvim_win_get_buf(win) == vim.g.vterm_buf then
                if vim.fn.mode() == 't' then vim.cmd('stopinsert') end
                vim.cmd('close')
                return
            end
        end
    end

    -- Open at right
    vim.cmd('botright vnew')
    vim.cmd('vertical resize ' .. vterm_width)
    if vim.g.vterm_buf and api.nvim_buf_is_valid(vim.g.vterm_buf) then
        api.nvim_set_current_buf(vim.g.vterm_buf)
    else
        vim.cmd('terminal')
        vim.g.vterm_buf = api.nvim_get_current_buf()
        vim.cmd('setlocal laststatus=0')
    end
    vim.cmd('startinsert')
end

-- Setup keymaps
function M.setup()
    map({ 'n', 't' }, '<leader>b', M.toggle_horizontal_term, { noremap = true, silent = true, desc = 'Toggle horizontal terminal' })
    map({ 'n', 't' }, '<leader>l', M.toggle_vertical_term, { noremap = true, silent = true, desc = 'Toggle vertical terminal' })
    map('t', 'ii', '<C-\\><C-N>', opts) -- exit terminal mode
end

return M
