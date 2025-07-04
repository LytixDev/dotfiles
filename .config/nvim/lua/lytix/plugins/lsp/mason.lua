return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    dependencies = {
      { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
      { "WhoIsSethDaniel/mason-tool-installer.nvim" },
    },
    config = function()
      -- import mason
      local mason = require("mason")

      -- import mason-lspconfig
      local mason_lspconfig = require("mason-lspconfig")

      local mason_tool_installer = require("mason-tool-installer")

      -- enable mason and configure icons
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      mason_lspconfig.setup({})
      mason_tool_installer.setup({})
      --   ensure_installed = {
      --     "prettier", -- prettier formatter
      --     "stylua", -- lua formatter
      --     "isort", -- python formatter
      --     "black", -- python formatter
      --     "pylint",
      --     "eslint_d",
      --   },
      -- })
    end,
  },
}
