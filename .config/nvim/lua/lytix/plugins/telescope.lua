return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require('telescope.builtin')

    telescope.setup()
    telescope.load_extension("fzf")

    -- keymaps
    vim.keymap.set("n", "<leader>d", builtin.find_files, {})
    vim.keymap.set("n", "<leader>g", builtin.live_grep, {})

    vim.keymap.set("n", "<leader>s", function()
        builtin.grep_string({ search = vim.fn.input("Grep >") })
    end, {})

    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
  end,
}
