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
local package_path_str = "/Users/nderyushev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/nderyushev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/nderyushev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/nderyushev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/nderyushev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n†\1\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0009\4\4\0B\4\1\2=\4\6\3B\1\2\1K\0\1\0\rpre_hook\1\0\0\20create_pre_hook\nsetup\fComment7ts_context_commentstring.integrations.comment_nvim\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["YankAssassin.vim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/YankAssassin.vim",
    url = "https://github.com/svban/YankAssassin.vim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-save.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\14auto-save\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/nvim-zh/auto-save.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["comment-box.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/comment-box.nvim",
    url = "https://github.com/LudoPinelli/comment-box.nvim"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\nm\0\0\4\0\6\0\v6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä5\0\5\0L\0\2\0K\0\1\0\1\0\1\fenabled\1\rNvimTree\rfiletype\24nvim_buf_get_option\bapi\bvimb\1\0\6\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\3B\1\2\1K\0\1\0\ninput\1\0\0\15get_config\1\0\0\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfeline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/opt/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nn\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2#show_trailing_blankline_indent\1\tchar\b‚îä\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\nç\2\0\2\n\0\14\0\0305\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3\18\4\3\0'\6\5\0'\a\6\0'\b\a\0\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\b\0006\b\2\0009\b\t\b9\b\n\b9\b\v\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\f\0006\b\2\0009\b\t\b9\b\n\b9\b\r\b\18\t\2\0B\4\5\1K\0\1\0\16code_action\15<leader>ca\vrename\bbuf\blsp\14<space>rn6<cmd>lua vim.lsp.buf.format({ async = true })<cr>\14<leader>f\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1ƒ\n\1\0\f\0<\0∞\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0006\3\5\0B\1\2\0019\1\6\0003\3\a\0B\1\2\0015\1\t\0005\2\b\0=\2\n\0015\2\f\0005\3\v\0=\3\n\0029\3\r\0'\5\14\0\18\6\2\0B\3\3\0019\3\r\0'\5\15\0\18\6\1\0B\3\3\0019\3\16\0B\3\1\0016\3\0\0'\5\17\0B\3\2\0026\4\0\0'\6\18\0B\4\2\0029\5\19\0'\a\18\0004\b\0\0B\5\3\0029\6\16\0045\b\20\0009\t\6\5=\t\6\b4\t\29\0>\3\1\t9\n\21\0049\n\22\n9\n\23\n>\n\2\t9\n\21\0049\n\24\n9\n\23\n>\n\3\t9\n\21\0049\n\22\n9\n\25\n>\n\4\t9\n\21\0049\n\26\n9\n\27\n>\n\5\t9\n\21\0049\n\26\n9\n\28\n>\n\6\t9\n\21\0049\n\22\n9\n\29\n>\n\a\t9\n\21\0049\n\22\n9\n\30\n>\n\b\t9\n\21\0049\n\22\n9\n\31\n>\n\t\t9\n\21\0049\n\24\n9\n\31\n>\n\n\t9\n\21\0049\n\22\n9\n \n>\n\v\t9\n\21\0049\n\22\n9\n!\n>\n\f\t9\n\21\0049\n\22\n9\n\"\n>\n\r\t9\n\21\0049\n\24\n9\n\"\n>\n\14\t9\n\21\0049\n\22\n9\n#\n>\n\15\t9\n\21\0049\n\22\n9\n$\n>\n\16\t9\n\21\0049\n\22\n9\n%\n>\n\17\t9\n\21\0049\n\24\n9\n&\n>\n\18\t9\n\21\0049\n\24\n9\n'\n>\n\19\t9\n\21\0049\n\24\n9\n\29\n>\n\20\t9\n\21\0049\n\24\n9\n(\n>\n\21\t9\n\21\0049\n\24\n9\n)\n>\n\22\t9\n\21\0049\n\24\n9\n*\n>\n\23\t9\n\21\0049\n\24\n9\n+\n>\n\24\t9\n\21\0049\n\24\n9\n,\n>\n\25\t9\n\21\0049\n\24\n9\n-\n>\n\26\t9\n\21\0049\n\24\n9\n.\n>\n\27\t9\n\21\0049\n/\n9\n0\n>\n\28\t=\t1\bB\6\2\0016\6\0\0'\b2\0B\6\2\0029\a3\0009\a4\aB\a\1\0026\b5\0009\b6\b\18\n\a\0005\v7\0B\b\3\0019\b3\0009\b8\b5\n9\0005\v:\0=\v;\n=\a1\nB\b\2\0029\t\16\6\18\v\b\0B\t\2\1K\0\1\0\15completion\1\0\1\16completeopt#menu,menuone,noinsert,noselect\1\0\1\14preselect\tnone\15cmp_config\1\0\1\tname\28nvim_lsp_signature_help\vinsert\ntable\16cmp_sources\rdefaults\bcmp\fsources\rprintenv\nhover\fxmllint\18trim_newlines\20trim_whitespace\18terraform_fmt\vphpcbf\rprettier\nisort\rbeautysh\rautopep8\bzsh\ryamllint\ttidy\14stylelint\rjsonlint\vflake8\rerb_lint\14curlylint\14codespell\16refactoring\rgitsigns\17code_actions\14haml_lint\15formatting\frubocop\16diagnostics\rbuiltins\1\0\1\ndebug\2\18build_options\fnull-ls\30plugins.null-ls.slim-lint\nsetup\15solargraph\vsorbet\14configure\1\0\0\1\2\0\0\15bin/sorbet\bcmd\1\0\0\1\2\0\0\19bin/solargraph\0\14on_attach\fservers\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason-nvim-dap.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/mason-nvim-dap.nvim",
    url = "https://github.com/jayp0521/mason-nvim-dap.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neogen = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneogen\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  neogit = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n…\1\0\0\t\0\n\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\0029\3\6\2\18\5\3\0009\3\a\3'\6\b\0009\a\t\1B\a\1\0A\3\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\n_\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\fautocmd\1\0\0\1\0\1\fenabled\2\nsetup\19nvim-lightbulb\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¯\b\0\0\6\0-\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0005\4\17\0=\4\18\3=\3\19\0025\3\25\0005\4\20\0005\5\21\0=\5\22\0045\5\23\0=\5\24\4=\4\26\0035\4\27\0005\5\28\0=\5\29\4=\4\30\0035\4\31\0005\5 \0=\5\18\4=\4!\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\4=\4+\3=\3,\2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\6\aaf\20@function.outer\aaa\21@parameter.outer\aif\20@function.inner\aia\21@parameter.inner\aic\17@class.inner\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\16lsp_interop\25peek_definition_code\1\0\2\15<leader>dF\17@class.outer\15<leader>df\20@function.outer\1\0\2\venable\2\vborder\tnone\tswap\1\0\0\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\fendwise\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\fmatchup\1\0\1\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14separator\6-\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["qf.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\aqf\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/qf.nvim",
    url = "https://github.com/ten3roberts/qf.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nî\2\0\0\a\0\17\0\0226\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\v\0005\4\5\0005\5\a\0005\6\6\0=\6\b\0054\6\0\0=\6\t\5=\5\n\4=\4\f\0035\4\14\0005\5\r\0=\5\15\4=\4\16\3B\1\2\1K\0\1\0\fpickers\fbuffers\1\0\0\1\0\2\26ignore_current_buffer\2\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\6i\1\0\0\1\0\2\n<C-u>\1\n<C-d>\1\1\0\1\21sorting_strategy\14ascending\nsetup\16refactoring\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tree-sitter-embedded-template"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/tree-sitter-embedded-template",
    url = "https://github.com/tree-sitter/tree-sitter-embedded-template"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-better-whitespace",
    url = "https://github.com/ntpeters/vim-better-whitespace"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-sensible",
    url = "https://github.com/tpope/vim-sensible"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-slim"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-slim",
    url = "https://github.com/slim-template/vim-slim"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yaml.nvim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nderyushev/.local/share/nvim/site/pack/packer/opt/yaml.nvim",
    url = "https://github.com/cuducos/yaml.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: qf.nvim
time([[Config for qf.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\aqf\frequire\0", "config", "qf.nvim")
time([[Config for qf.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n…\1\0\0\t\0\n\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\0029\3\6\2\18\5\3\0009\3\a\3'\6\b\0009\a\t\1B\a\1\0A\3\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\14auto-save\frequire\0", "config", "auto-save.nvim")
time([[Config for auto-save.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\n_\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\fautocmd\1\0\0\1\0\1\fenabled\2\nsetup\19nvim-lightbulb\frequire\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14separator\6-\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¯\b\0\0\6\0-\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0005\4\17\0=\4\18\3=\3\19\0025\3\25\0005\4\20\0005\5\21\0=\5\22\0045\5\23\0=\5\24\4=\4\26\0035\4\27\0005\5\28\0=\5\29\4=\4\30\0035\4\31\0005\5 \0=\5\18\4=\4!\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\4=\4+\3=\3,\2B\0\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\6\aaf\20@function.outer\aaa\21@parameter.outer\aif\20@function.inner\aia\21@parameter.inner\aic\17@class.inner\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\16lsp_interop\25peek_definition_code\1\0\2\15<leader>dF\17@class.outer\15<leader>df\20@function.outer\1\0\2\venable\2\vborder\tnone\tswap\1\0\0\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\fendwise\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\fmatchup\1\0\1\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\nm\0\0\4\0\6\0\v6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä5\0\5\0L\0\2\0K\0\1\0\1\0\1\fenabled\1\rNvimTree\rfiletype\24nvim_buf_get_option\bapi\bvimb\1\0\6\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\3B\1\2\1K\0\1\0\ninput\1\0\0\15get_config\1\0\0\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\nç\2\0\2\n\0\14\0\0305\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3\18\4\3\0'\6\5\0'\a\6\0'\b\a\0\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\b\0006\b\2\0009\b\t\b9\b\n\b9\b\v\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\f\0006\b\2\0009\b\t\b9\b\n\b9\b\r\b\18\t\2\0B\4\5\1K\0\1\0\16code_action\15<leader>ca\vrename\bbuf\blsp\14<space>rn6<cmd>lua vim.lsp.buf.format({ async = true })<cr>\14<leader>f\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1ƒ\n\1\0\f\0<\0∞\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0006\3\5\0B\1\2\0019\1\6\0003\3\a\0B\1\2\0015\1\t\0005\2\b\0=\2\n\0015\2\f\0005\3\v\0=\3\n\0029\3\r\0'\5\14\0\18\6\2\0B\3\3\0019\3\r\0'\5\15\0\18\6\1\0B\3\3\0019\3\16\0B\3\1\0016\3\0\0'\5\17\0B\3\2\0026\4\0\0'\6\18\0B\4\2\0029\5\19\0'\a\18\0004\b\0\0B\5\3\0029\6\16\0045\b\20\0009\t\6\5=\t\6\b4\t\29\0>\3\1\t9\n\21\0049\n\22\n9\n\23\n>\n\2\t9\n\21\0049\n\24\n9\n\23\n>\n\3\t9\n\21\0049\n\22\n9\n\25\n>\n\4\t9\n\21\0049\n\26\n9\n\27\n>\n\5\t9\n\21\0049\n\26\n9\n\28\n>\n\6\t9\n\21\0049\n\22\n9\n\29\n>\n\a\t9\n\21\0049\n\22\n9\n\30\n>\n\b\t9\n\21\0049\n\22\n9\n\31\n>\n\t\t9\n\21\0049\n\24\n9\n\31\n>\n\n\t9\n\21\0049\n\22\n9\n \n>\n\v\t9\n\21\0049\n\22\n9\n!\n>\n\f\t9\n\21\0049\n\22\n9\n\"\n>\n\r\t9\n\21\0049\n\24\n9\n\"\n>\n\14\t9\n\21\0049\n\22\n9\n#\n>\n\15\t9\n\21\0049\n\22\n9\n$\n>\n\16\t9\n\21\0049\n\22\n9\n%\n>\n\17\t9\n\21\0049\n\24\n9\n&\n>\n\18\t9\n\21\0049\n\24\n9\n'\n>\n\19\t9\n\21\0049\n\24\n9\n\29\n>\n\20\t9\n\21\0049\n\24\n9\n(\n>\n\21\t9\n\21\0049\n\24\n9\n)\n>\n\22\t9\n\21\0049\n\24\n9\n*\n>\n\23\t9\n\21\0049\n\24\n9\n+\n>\n\24\t9\n\21\0049\n\24\n9\n,\n>\n\25\t9\n\21\0049\n\24\n9\n-\n>\n\26\t9\n\21\0049\n\24\n9\n.\n>\n\27\t9\n\21\0049\n/\n9\n0\n>\n\28\t=\t1\bB\6\2\0016\6\0\0'\b2\0B\6\2\0029\a3\0009\a4\aB\a\1\0026\b5\0009\b6\b\18\n\a\0005\v7\0B\b\3\0019\b3\0009\b8\b5\n9\0005\v:\0=\v;\n=\a1\nB\b\2\0029\t\16\6\18\v\b\0B\t\2\1K\0\1\0\15completion\1\0\1\16completeopt#menu,menuone,noinsert,noselect\1\0\1\14preselect\tnone\15cmp_config\1\0\1\tname\28nvim_lsp_signature_help\vinsert\ntable\16cmp_sources\rdefaults\bcmp\fsources\rprintenv\nhover\fxmllint\18trim_newlines\20trim_whitespace\18terraform_fmt\vphpcbf\rprettier\nisort\rbeautysh\rautopep8\bzsh\ryamllint\ttidy\14stylelint\rjsonlint\vflake8\rerb_lint\14curlylint\14codespell\16refactoring\rgitsigns\17code_actions\14haml_lint\15formatting\frubocop\16diagnostics\rbuiltins\1\0\1\ndebug\2\18build_options\fnull-ls\30plugins.null-ls.slim-lint\nsetup\15solargraph\vsorbet\14configure\1\0\0\1\2\0\0\15bin/sorbet\bcmd\1\0\0\1\2\0\0\19bin/solargraph\0\14on_attach\fservers\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2#show_trailing_blankline_indent\1\tchar\b‚îä\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n†\1\0\0\6\0\a\0\r6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0009\4\4\0B\4\1\2=\4\6\3B\1\2\1K\0\1\0\rpre_hook\1\0\0\20create_pre_hook\nsetup\fComment7ts_context_commentstring.integrations.comment_nvim\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nî\2\0\0\a\0\17\0\0226\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\v\0005\4\5\0005\5\a\0005\6\6\0=\6\b\0054\6\0\0=\6\t\5=\5\n\4=\4\f\0035\4\14\0005\5\r\0=\5\15\4=\4\16\3B\1\2\1K\0\1\0\fpickers\fbuffers\1\0\0\1\0\2\26ignore_current_buffer\2\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\6i\1\0\0\1\0\2\n<C-u>\1\n<C-d>\1\1\0\1\21sorting_strategy\14ascending\nsetup\16refactoring\19load_extension\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd feline.nvim ]]

-- Config for: feline.nvim
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfeline\frequire\0", "config", "feline.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'yaml.nvim'}, { ft = "yaml" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

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
