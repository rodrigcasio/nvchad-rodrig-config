return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      -- 1. Load NvChad's base LSP configurations first
      require("nvchad.configs.lspconfig").defaults()

      local lspconfig = require "lspconfig"

      -- 2. List all the language servers you want active
      local servers = { "html", "cssls", "clangd" }

      -- 3. Loop through the servers and initialize them with NvChad defaults
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = require("nvchad.configs.lspconfig").on_attach,
          on_init = require("nvchad.configs.lspconfig").on_init,
          capabilities = require("nvchad.configs.lspconfig").capabilities,
        }
      end
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}

