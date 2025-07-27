---@type LazySpec
return {
  {
    "andweeb/presence.nvim",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⢷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⣦⢳⡬⣟⢻⣦⣀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣿⠜⣧⣯⡽⢾⠳⣞⡻⣛⠟⡿⢿⠶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⡯⡟⡝⣦⣙⡮⠛⣝⠲⣍⢞⣱⢍⡞⣥⣛⢻⣦⣄⠀⠀⢀⣀⣀⣤⣤⣤⣤⣀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡿⣋⠶⣹⢜⡱⡄⢆⣡⡝⠷⡼⠞⢹⡎⡖⢦⢻⠦⣭⠹⣷⡟⣻⢫⣽⠭⡧⣧⣍⣛⡧",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢟⡲⣍⢾⡱⢎⣽⠵⣋⠶⡽⡹⣜⡧⣞⡹⡜⣣⢻⡳⢬⡗⡭⢿⣶⡟⣖⣫⣶⡷⢣⣾⡟",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣾⢻⢱⡎⣵⡞⢣⡝⣮⢱⢫⡜⣽⢱⢳⡌⢳⣬⢳⠙⣦⣿⢹⡖⣽⢸⡍⣿⣯⢹⣽⣦⣿⣿⡟⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⡾⢿⣜⣺⢣⡝⣼⢣⢏⠶⣩⠞⣬⡷⣋⠗⣎⡝⣦⠟⣬⢓⢮⠋⢷⢯⣽⢣⣙⢻⣿⣾⢹⣿⣿⠏⠁⠀",
            "⠀⠀⠀⠀⠀⠀⢀⣴⢞⠫⡝⣢⠝⣦⣿⢣⠳⣼⣏⣳⣮⡷⠵⣛⢟⡱⣍⠞⡴⣽⢏⡝⢦⣫⠃⠀⠘⡾⣼⢣⢎⣽⣿⣿⠛⣼⡅⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⣾⠃⣌⠳⡌⣥⢫⣷⡏⣧⢋⡿⠛⠉⠀⣤⣚⠵⣪⣕⡮⢝⡻⣋⢞⡼⠋⠉⠙⢆⠀⣟⡿⣘⠮⣼⣿⣿⣡⢴⣿⡀⠀⠀",
            "⠀⠀⠀⠀⠀⢸⡏⠰⣀⠳⡘⢴⣿⣿⢫⢳⣍⢧⣶⣤⣄⣒⣚⠉⠁⠀⠀⠛⠚⠉⠀⠀⠀⠀⠀⠀⠀⣿⠳⣍⠞⣼⣿⢾⣯⣷⣾⡁⠀⠀",
            "⠀⠀⠀⢀⣤⣼⣧⠑⡠⢃⠜⣸⡿⢾⡩⢎⡏⠉⠁⠉⠉⠉⠉⠀⠀⠀⠀⠀⢠⣭⣒⠄⠀⠀⠀⠀⢀⣏⢳⢬⢫⣟⣯⣿⢯⡟⣽⣷⡀⠀",
            "⠀⠀⠀⣿⠋⢿⣿⠄⡱⢈⠜⣸⠀⠈⣷⢩⣧⠤⠤⣄⡀⠀⠀⠓⠶⠤⣀⠄⠀⠉⠛⡿⢿⠶⢆⣠⠻⣌⠳⣎⣽⣿⣻⣽⣿⠸⣌⢿⣷⠀",
            "⠀⠀⠀⣿⣇⢂⡙⠒⠖⢃⡘⡼⡳⠶⠛⡏⠀⠀⠀⠀⣳⠶⠒⠶⠤⢤⣀⠀⢀⣀⣀⠀⠀⠘⠯⢼⡷⣋⠷⣼⡟⣷⣻⣷⠏⡵⣊⢖⣻⡇",
            "⠀⠀⠀⠘⣧⣓⠦⣉⠘⣤⢼⡋⠤⠄⠂⢛⡶⣦⠶⠟⠃⠤⠤⢀⣀⠀⠈⢹⠉⠀⠈⠙⢦⣀⣤⢟⡲⣭⣾⢻⡼⣗⣿⠏⣜⠱⣘⠲⡰⡇",
            "⠀⠀⠀⠀⠈⠙⢻⣿⠟⢡⠊⠀⢀⠤⠐⠊⠉⢀⠀⠀⡀⠀⠀⠀⠀⠈⠹⠿⢤⣤⣀⣀⣨⠿⢵⣮⢿⣻⡉⠁⢀⡿⢃⠞⣠⠋⡔⢣⣱⡃",
            "⠀⠀⠀⠀⠀⣰⡟⠀⡠⠁⠀⠐⠂⠀⠀⠀⠀⠀⠀⠄⠁⠀⠂⠐⠄⢀⠀⠄⠀⠈⠹⣫⢥⣋⠦⡙⠶⣤⡀⣠⠞⡰⢁⠎⡄⢣⠘⣴⠏⠀",
            "⠀⠀⠀⠀⣴⠏⠀⡰⠁⠀⠀⠂⠀⠀⠀⠀⠀⠀⠌⠀⠀⠀⠀⠀⠀⠀⠌⠐⠒⠤⣀⠱⣢⠏⠛⠍⡉⠑⣽⠃⠜⣄⢃⠒⣨⣴⣿⠉⠀⠀",
            "⠀⠀⢀⣼⠏⠀⡰⠁⠀⡀⠢⠄⠀⢠⠀⠀⢀⠐⠀⠀⠀⠀⠀⠀⢀⠈⠀⠀⠀⠀⠀⠉⢳⠀⢆⡀⠈⠢⢻⡌⢂⠌⡓⠼⠿⠟⣻⡇⠀⠀",
            "⠀⢀⣼⠋⠀⠰⠁⠀⠀⠄⠀⠀⠀⠀⠀⠈⡀⠐⠀⠠⠂⣀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠸⡌⠈⠊⢄⠇⢸⣷⣌⠲⣈⣔⡡⣶⠟⠀⠀⠀",
            "⠀⣼⡟⠀⠀⡇⡀⠀⠘⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠃⠠⠀⡀⠀⠀⠀⠀⢀⠧⠀⠀⠀⢸⠀⠀⣿⠿⣧⣤⣤⠿⠃⠀⠀⠀⠀",
            "⢰⣟⠀⠀⠀⠉⠂⠴⣀⠆⣀⠀⡀⠀⠠⠁⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠉⠐⢂⡤⠊⣀⠀⠀⢀⠇⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠹⢶⣄⡀⠀⠀⠀⠀⠉⠐⠊⠥⣀⡂⠤⢀⡀⠀⠀⠀⠠⠁⠀⠀⠀⠀⣠⠖⣩⢇⠃⠉⠚⠤⡜⠀⢀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠈⠙⠻⢶⣤⣀⡀⠀⠀⠀⠀⠀⠉⠐⠒⠩⠄⣂⣁⠠⢀⣠⢴⣋⠖⣩⠇⠂⠀⠀⠀⡰⠁⢀⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠶⣦⣤⣄⣀⠀⠀⠀⠀⠀⠀⠙⠋⠚⠒⠋⠭⠥⠤⣀⣀⣀⣠⠃⢠⣻⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠿⠶⣶⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⣣⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠛⠛⠳⠶⠶⢶⠴⣶⢾⡷⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          }, "\n"),
          keys = {},
        },
      },
    },
  },
  { "max397574/better-escape.nvim", enabled = false },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts)
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts)
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules({
        Rule("$", "$", { "tex", "latex" })
          :with_pair(cond.not_after_regex "%%")
          :with_pair(cond.not_before_regex("xxx", 3))
          :with_move(cond.none())
          :with_del(cond.not_after_regex "xx")
          :with_cr(cond.none()),
      }, Rule("a", "a", "-vim"))
    end,
  },
  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function() require "plugins.configs.discord" end,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function() require "plugins.configs.hlchunk" end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = function(_, opts) return require("indent-rainbowline").make_opts(opts) end,
    dependencies = {
      "TheGLander/indent-rainbowline.nvim",
      "shellRaining/hlchunk.nvim",
    },
  },
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require "plugins.configs.lab" end,
  },
  { "wakatime/vim-wakatime", lazy = false },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  {
    "markwoodhall/vim-codelens",
  },
  {
    "rebelot/heirline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
  },
  { "mistricky/codesnap.nvim", build = "make" },
  { "typicode/bg.nvim", lazy = false },
}
