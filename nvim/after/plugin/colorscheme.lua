-- require("rose-pine").setup({
--     variant = "auto", -- auto, main, moon, or dawn
--     dark_variant = "main", -- main, moon, or dawn
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     enable = {
--         terminal = true,
--         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--         migrations = true, -- Handle deprecated options automatically
--     },
--
--     styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--     },
--
--     groups = {
--         border = "muted",
--         link = "iris",
--         panel = "surface",
--
--         error = "love",
--         hint = "iris",
--         info = "foam",
--         note = "pine",
--         todo = "rose",
--         warn = "gold",
--
--         git_add = "foam",
--         git_change = "rose",
--         git_delete = "love",
--         git_dirty = "rose",
--         git_ignore = "muted",
--         git_merge = "iris",
--         git_rename = "pine",
--         git_stage = "iris",
--         git_text = "rose",
--         git_untracked = "subtle",
--
--         h1 = "iris",
--         h2 = "foam",
--         h3 = "rose",
--         h4 = "gold",
--         h5 = "pine",
--         h6 = "foam",
--     },
--
--     palette = {
--         -- Override the builtin palette per variant
--         -- moon = {
--         --     base = '#18191a',
--         --     overlay = '#363738',
--         -- },
--     },
--
-- 	-- NOTE: Highlight groups are extended (merged) by default. Disable this
-- 	-- per group via `inherit = false`
--     highlight_groups = {
--         -- Comment = { fg = "foam" },
--         -- StatusLine = { fg = "love", bg = "love", blend = 15 },
--         -- VertSplit = { fg = "muted", bg = "muted" },
--         -- Visual = { fg = "base", bg = "text", inherit = false },
--     },
--
--     before_highlight = function(group, highlight, palette)
--         -- Disable all undercurls
--         -- if highlight.undercurl then
--         --     highlight.undercurl = false
--         -- end
--         --
--         -- Change palette colour
--         -- if highlight.fg == palette.pine then
--         --     highlight.fg = palette.foam
--         -- end
--     end,
-- })
--
-- vim.cmd("colorscheme rose-pine")
-- -- vim.cmd("colorscheme rose-pine-main")
-- -- vim.cmd("colorscheme rose-pine-moon")
-- -- vim.cmd("colorscheme rose-pine-dawn")












-- require("rose-pine").setup({
--     variant = "main",
--     dark_variant = "main",
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     enable = {
--         terminal = true,
--         legacy_highlights = false,
--         migrations = false,
--     },
--
--     styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--     },
--
--     palette = {
--         main = {
--             base = "#1E1E1E",
--             text = "#FFFFFF",
--             overlay = "#2E2E2E",
--             muted = "#888888",
--             subtext0 = "#888888",
--             subtext1 = "#AAAAAA",
--             surface = "#2E2E2E",
--         },
--     },
--
--     highlight_groups = {
--         Normal       = { fg = "#FFFFFF", bg = "NONE" },
--         NormalFloat  = { fg = "#FFFFFF", bg = "NONE" },
--
--         Comment      = { fg = "#888888", bg = "NONE", italic = true },
--         Keyword      = { fg = "#888888", bg = "NONE", bold = true },
--         Type         = { fg = "#888888", bg = "NONE" },
--         PreProc      = { fg = "#888888", bg = "NONE", bold = true },
--         Include      = { fg = "#888888", bg = "NONE" },
--
--         Function     = { fg = "#FFFFFF", bg = "NONE" },
--         Identifier   = { fg = "#FFFFFF", bg = "NONE" },
--
--         Constant     = { fg = "#AAAAAA", bg = "NONE" },
--         String       = { fg = "#AAAAAA", bg = "NONE" },
--         Number       = { fg = "#AAAAAA", bg = "NONE" },
--         Boolean      = { fg = "#AAAAAA", bg = "NONE" },
--
--         Operator     = { fg = "#FFFFFF", bg = "NONE" },
--         Delimiter    = { fg = "#FFFFFF", bg = "NONE" },
--
--         LineNr       = { fg = "#555555", bg = "NONE" },
--         CursorLineNr = { fg = "#FFFFFF", bg = "NONE" },
--
--         Visual       = { fg = "NONE", bg = "#444444" },
--         Search       = { fg = "#1E1E1E", bg = "#FFFFFF" },
--
--         -- Make status line transparent
--         StatusLine   = { fg = "#FFFFFF", bg = "NONE" },
--         StatusLineNC = { fg = "#888888", bg = "NONE" },
--     },
--
--     before_highlight = function(group, highlight, palette)
--         if highlight.undercurl then
--             highlight.undercurl = false
--         end
--         highlight.link = nil
--     end,
-- })
--
-- vim.cmd("colorscheme rose-pine")














-- require("rose-pine").setup({
--     variant = "main",
--     dark_variant = "main",
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     enable = {
--         terminal = true,
--         legacy_highlights = true,
--         migrations = true,
--     },
--
--     styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--     },
--
--     groups = {
--         border = "muted",
--         link = "foam",
--         panel = "surface",
--     },
--
--     palette = {
--         main = {
--             base = "NONE",
--             surface = "NONE",
--             overlay = "NONE",
--             text = "#EAEAEA",
--             muted = "#888888",
--             subtext1 = "#AAAAAA",
--             subtext0 = "#888888",
--             foam = "#EAEAEA",
--             love = "#EAEAEA",
--             iris = "#EAEAEA",
--             gold = "#EAEAEA",
--             pine = "#EAEAEA",
--             rose = "#EAEAEA",
--         },
--     },
--
--     highlight_groups = {
--         Normal       = { fg = "#EAEAEA", bg = "NONE" },
--         NormalFloat  = { fg = "#EAEAEA", bg = "NONE" },
--         Comment      = { fg = "#888888", bg = "NONE" },
--         Constant     = { fg = "#EAEAEA", bg = "NONE" },
--         String       = { fg = "#EAEAEA", bg = "NONE" },
--         Number       = { fg = "#EAEAEA", bg = "NONE" },
--         Boolean      = { fg = "#EAEAEA", bg = "NONE" },
--         Keyword      = { fg = "#AAAAAA", bg = "NONE" },
--         Function     = { fg = "#EAEAEA", bg = "NONE" },
--         Identifier   = { fg = "#EAEAEA", bg = "NONE" },
--         Type         = { fg = "#AAAAAA", bg = "NONE" },
--         Statement    = { fg = "#EAEAEA", bg = "NONE" },
--         Special      = { fg = "#EAEAEA", bg = "NONE" },
--         LineNr       = { fg = "#555555", bg = "NONE" },
--         CursorLineNr = { fg = "#EAEAEA", bg = "NONE" },
--
--         -- ✨ Brighter gray selection for visibility on transparent bg
--         Visual       = { fg = "NONE", bg = "#5A5A5A" },
--         Search       = { fg = "#1E1E1E", bg = "#EAEAEA" },
--
--         -- fully transparent statusline
--         StatusLine   = { fg = "#EAEAEA", bg = "NONE" },
--         StatusLineNC = { fg = "#888888", bg = "NONE" },
--     },
--
--     before_highlight = function(group, highlight, palette)
--         if highlight.undercurl then
--             highlight.undercurl = false
--         end
--     end,
-- })
--
-- vim.cmd("colorscheme rose-pine")





--
-- require("rose-pine").setup({
--     variant = "main",
--     dark_variant = "main",
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     enable = {
--         terminal = true,
--         legacy_highlights = true,
--         migrations = true,
--     },
--
--     styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--     },
--
--     groups = {
--         border = "muted",
--         link = "foam",
--         panel = "surface",
--     },
--
--     palette = {
--         main = {
--             base = "NONE",
--             surface = "NONE",
--             overlay = "NONE",
--             text = "#EAEAEA",
--             muted = "#888888",
--             subtext1 = "#AAAAAA",
--             subtext0 = "#888888",
--             foam = "#EAEAEA",
--             love = "#EAEAEA",
--             iris = "#EAEAEA",
--             gold = "#EAEAEA",
--             pine = "#EAEAEA",
--             rose = "#EAEAEA",
--         },
--     },
--
--     highlight_groups = {
--         Normal       = { fg = "#EAEAEA", bg = "NONE" },
--         NormalFloat  = { fg = "#EAEAEA", bg = "NONE" },
--         Comment      = { fg = "#888888", bg = "NONE" },
--         Constant     = { fg = "#EAEAEA", bg = "NONE" },
--         String       = { fg = "#EAEAEA", bg = "NONE" },
--         Number       = { fg = "#EAEAEA", bg = "NONE" },
--         Boolean      = { fg = "#EAEAEA", bg = "NONE" },
--         Keyword      = { fg = "#AAAAAA", bg = "NONE" },
--         Function     = { fg = "#EAEAEA", bg = "NONE" },
--         Identifier   = { fg = "#EAEAEA", bg = "NONE" },
--         Type         = { fg = "#AAAAAA", bg = "NONE" },
--         Statement    = { fg = "#EAEAEA", bg = "NONE" },
--         Special      = { fg = "#EAEAEA", bg = "NONE" },
--         LineNr       = { fg = "#555555", bg = "NONE" },
--         CursorLineNr = { fg = "#EAEAEA", bg = "NONE" },
--
--         -- Brighter selection for visibility
--         Visual       = { fg = "NONE", bg = "#AAAAAA" },
--         Search       = { fg = "#1E1E1E", bg = "#EAEAEA" },
--
--         StatusLine = { fg = "muted", bg = "none" },
--         StatusLineNC = { fg = "muted", bg = "none" },
--         MsgArea = { fg = "muted", bg = "none" },
--         Cmdline = { fg = "muted", bg = "none" },
--     },
--
--     before_highlight = function(group, highlight, palette)
--         if highlight.undercurl then
--             highlight.undercurl = false
--         end
--     end,
-- })
--
-- vim.cmd("colorscheme rose-pine")



















-- require("rose-pine").setup({
--     variant = "main",
--     dark_variant = "main",
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     enable = {
--         terminal = true,
--         legacy_highlights = true,
--         migrations = true,
--     },
--
--     styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--     },
--
--     groups = {
--         border = "muted",
--         link = "foam",
--         panel = "surface",
--     },
--
--     palette = {
--         main = {
--             base      = "NONE",
--             surface   = "NONE",
--             overlay   = "NONE",
--             text      = "#CBCBCB",  -- main text
--             muted     = "#666666",  -- comments
--             subtext1  = "#888888",
--             subtext0  = "#555555",
--             foam      = "#AAAAAA",   -- previously purple-ish
--             love      = "#AAAAAA",
--             iris      = "#AAAAAA",
--             gold      = "#AAAAAA",
--             pine      = "#AAAAAA",
--             rose      = "#AAAAAA",
--         },
--     },
--
--     highlight_groups = {
--         Normal       = { fg = "#CBCBCB", bg = "NONE" },
--         NormalFloat  = { fg = "#CBCBCB", bg = "NONE" },
--
--         Comment      = { fg = "#666666", bg = "NONE" },
--
--         -- Interchanged colors (previously purple → now gray)
--         Function     = { fg = "#AAAAAA", bg = "NONE" },
--         Identifier   = { fg = "#AAAAAA", bg = "NONE" },
--         Constant     = { fg = "#AAAAAA", bg = "NONE" },
--         Special      = { fg = "#AAAAAA", bg = "NONE" },
--
--         String       = { fg = "#CBCBCB", bg = "NONE" },
--         Number       = { fg = "#CBCBCB", bg = "NONE" },
--         Boolean      = { fg = "#CBCBCB", bg = "NONE" },
--
--         Keyword      = { fg = "#888888", bg = "NONE" },
--         Type         = { fg = "#888888", bg = "NONE" },
--         Statement    = { fg = "#CBCBCB", bg = "NONE" },
--
--         LineNr       = { fg = "#444444", bg = "NONE" },
--         CursorLineNr = { fg = "#CBCBCB", bg = "NONE" },
--
--         -- Brighter selection for visibility
--         Visual       = { fg = "NONE", bg = "#B0B0B0" },  -- lighter gray selection
--         Search       = { fg = "#222222", bg = "#CBCBCB" }, -- gray search highlight
--
--         StatusLine = { fg = "muted", bg = "none" },
--         StatusLineNC = { fg = "muted", bg = "none" },
--         MsgArea = { fg = "muted", bg = "none" },
--         Cmdline = { fg = "muted", bg = "none" },
--     },
--
--     before_highlight = function(group, highlight, palette)
--         if highlight.undercurl then
--             highlight.undercurl = false
--         end
--     end,
-- })
--
-- vim.cmd("colorscheme rose-pine")

