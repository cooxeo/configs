-- ~/.config/nvim/lua/cooxeo/markdown.lua

-- Enable line numbers + wrapping for Markdown files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        local bufname = vim.api.nvim_buf_get_name(0)

        -- Only apply for Markdown files in ~/notes
        if bufname:match(vim.fn.expand("~/notes/")) then

            -- =========================
            -- Auto-save on changes
            -- =========================
            vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
                buffer = 0,
                callback = function()
                    vim.cmd("silent write")
                end,
            })

            -- =========================
            -- Toggle checkbox mapping
            -- =========================
            vim.keymap.set("n", "<leader>t", function()
                local line = vim.api.nvim_get_current_line()
                if line:match("%- %[ %]") then
                    line = line:gsub("%- %[ %]", "- [x]", 1)
                elseif line:match("%- %[x%]") then
                    line = line:gsub("%- %[x%]", "- [ ]", 1)
                end
                vim.api.nvim_set_current_line(line)
            end, { desc = "Toggle todo checkbox", buffer = true })

            -- =========================
            -- Add new checkbox mapping
            -- =========================
            vim.keymap.set("n", "<leader>a", function()
                local line = vim.api.nvim_get_current_line()
                local row = vim.api.nvim_win_get_cursor(0)[1]

                if line == "" then
                    vim.api.nvim_set_current_line("- [ ] ")
                    vim.api.nvim_win_set_cursor(0, { row, 5 })
                else
                    vim.api.nvim_buf_set_lines(0, row, row, false, { "- [ ] " })
                    vim.api.nvim_win_set_cursor(0, { row + 1, 5 })
                end
            end, { desc = "Add new todo checkbox", buffer = true })

        end

        -- =========================
        -- Line numbers
        -- =========================
        vim.opt.number = true
        vim.opt.relativenumber = true

        -- =========================
        -- Wrapping
        -- =========================
        vim.opt.wrap = true
        vim.opt.linebreak = true
        vim.opt.breakindent = true
        vim.opt.showbreak = " "
    end,
})

