return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup {
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        colors = {                   -- add/modify theme and palette colors
            palette = {},
            theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
            return {}
        end,
        theme = "wave",              -- Load "wave" theme
        background = {               -- map the value of 'background' option to a theme
            dark = "wave",           -- try "dragon" !
            light = "lotus"
        },
      }
    end,
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'warmer'
      }
      -- Enable theme
      -- require('onedark').load()
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    -- opts = {},
  },
  {
    'AlexvZyl/nordic.nvim',  
    lazy = false,  
    priority = 1000,  
  },
  {
    "vague2k/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
  },
  {
    "mcauley-penney/techbase.nvim",
    priority = 1000
  },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      -- vim.cmd.colorscheme('sonokai')
    end
  },
  { 'marko-cerovac/material.nvim', },
  { "Mofiqul/dracula.nvim", },
  { "Mofiqul/vscode.nvim", },
  { "rakr/vim-one", },
  { "EdenEast/nightfox.nvim" }
}
