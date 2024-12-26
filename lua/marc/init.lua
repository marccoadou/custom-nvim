require("marc.remap")
require("marc.lazy_init")
require("marc.set")
vim.cmd("colorscheme catppuccin")

-- Format on save using pint
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.php",
    callback = function()
        vim.cmd("FormatWrite")
    end,
})

