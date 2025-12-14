return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- Setup Mason first
    require("mason").setup()
    
    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd",        -- C/C++
        "pyright",       -- Python
        "ts_ls",         -- JavaScript/TypeScript/Node
        "html",          -- HTML
        "cssls",         -- CSS
        "jdtls",         -- Java
        "dockerls",      -- Docker
        "lua_ls",        -- Lua
      },
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Use the new vim.lsp.config API for Neovim 0.11+
    if vim.fn.has('nvim-0.11') == 1 then
      -- New API
      vim.lsp.config('*', {
        capabilities = capabilities,
      })
      
      vim.lsp.config.lua_ls = {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { 'vim' } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
          },
        },
      }
      
      -- Enable LSP for all installed servers
      vim.lsp.enable({'clangd', 'pyright', 'ts_ls', 'html', 'cssls', 'jdtls', 'dockerls', 'lua_ls'})
    else
      -- Fallback for older Neovim versions
      local lspconfig = require("lspconfig")
      
      local servers = {
        clangd = {},
        pyright = {},
        ts_ls = {},
        html = {},
        cssls = {},
        jdtls = {},
        dockerls = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { 'vim' } },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
            },
          },
        },
      }

      for server, config in pairs(servers) do
        config.capabilities = capabilities
        lspconfig[server].setup(config)
      end
    end
  end,
}
