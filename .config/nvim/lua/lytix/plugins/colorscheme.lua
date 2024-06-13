return {
    "sainnhe/gruvbox-material",
    priority = 50,
    config = function()
        vim.cmd("colorscheme gruvbox-material")
        -- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalTreeNormal", { bg = "none" })
    end,
}
