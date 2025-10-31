-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vishal/.cache/nvim/packer_hererocks/2.1.1753364724/share/lua/5.1/?.lua;/home/vishal/.cache/nvim/packer_hererocks/2.1.1753364724/share/lua/5.1/?/init.lua;/home/vishal/.cache/nvim/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?.lua;/home/vishal/.cache/nvim/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vishal/.cache/nvim/packer_hererocks/2.1.1753364724/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["conform.nvim"] = {
    config = { "\27LJ\2\nÍ\3\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\2B\0\2\1K\0\1\0\21formatters_by_ft\6c\1\2\0\0\17clang_format\bcpp\1\2\0\0\17clang_format\vpython\1\3\0\0\nisort\nblack\tjson\1\2\0\0\rprettier\bcss\1\2\0\0\rprettier\thtml\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\0\b\bcss\0\15typescript\0\15javascript\0\vpython\0\6c\0\bcpp\0\tjson\0\thtml\0\1\2\0\0\rprettier\19format_on_save\1\0\2\21formatters_by_ft\0\19format_on_save\0\1\0\2\17lsp_fallback\2\15timeout_ms\3ô\3\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["monochrome.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme monochrome\bcmd\bvim\0" },
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/monochrome.nvim",
    url = "https://github.com/kdheepak/monochrome.nvim"
  },
  neovim = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/vishal/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neovim
time([[Config for neovim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "neovim")
time([[Config for neovim]], false)
-- Config for: monochrome.nvim
time([[Config for monochrome.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme monochrome\bcmd\bvim\0", "config", "monochrome.nvim")
time([[Config for monochrome.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\nÍ\3\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\2B\0\2\1K\0\1\0\21formatters_by_ft\6c\1\2\0\0\17clang_format\bcpp\1\2\0\0\17clang_format\vpython\1\3\0\0\nisort\nblack\tjson\1\2\0\0\rprettier\bcss\1\2\0\0\rprettier\thtml\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\0\b\bcss\0\15typescript\0\15javascript\0\vpython\0\6c\0\bcpp\0\tjson\0\thtml\0\1\2\0\0\rprettier\19format_on_save\1\0\2\21formatters_by_ft\0\19format_on_save\0\1\0\2\17lsp_fallback\2\15timeout_ms\3ô\3\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
