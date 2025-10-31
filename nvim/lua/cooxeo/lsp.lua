-- Future-proof Neovim LSP setup

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "ts_ls", "clangd" },
})

-- ========================
-- LSP keymaps function
-- ========================
local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    local map = vim.keymap.set

    map('n', 'gd', vim.lsp.buf.definition, opts)      -- go to definition
    map('n', 'K', vim.lsp.buf.hover, opts)            -- hover info
    map('n', 'gi', vim.lsp.buf.implementation, opts)  -- go to implementation
    map('n', '<leader>rn', vim.lsp.buf.rename, opts)  -- rename symbol
    map('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- code actions
    map('n', 'gr', vim.lsp.buf.references, opts)      -- list references
end

-- ========================
-- Helper function to detect project root
    -- ========================
local function get_root(patterns)
    local cwd = vim.fn.getcwd()
    local root_file = vim.fs.find(patterns, { upward = true, path = cwd })[1]
    if root_file then
        return vim.fs.dirname(root_file)
    end
    return cwd
end

-- ========================
-- Python - pyright
-- ========================
vim.lsp.start({
    name = "pyright",
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_dir = function() return get_root({ ".git" }) end,
    on_attach = on_attach,
})

-- ========================
-- JavaScript / TypeScript - ts_ls
-- ========================
vim.lsp.start({
    name = "ts_ls",
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    root_dir = function() return get_root({ "package.json", ".git" }) end,
    on_attach = on_attach,
})

-- ========================
-- C/C++ - clangd
-- ========================
vim.lsp.start({
    name = "clangd",
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = function() return get_root({ "compile_commands.json", ".git" }) end,
    on_attach = on_attach,
})

