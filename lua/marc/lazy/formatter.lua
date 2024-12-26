return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup({
            filetype = {
                php = {
                    -- Use Laravel Pint for PHP
                    function()
                        return {
                            exe = "pint", -- Laravel Pint executable
                            args = { "--quiet", "--" }, -- Quiet mode and specify files
                            stdin = false, -- Pint does not support stdin
                        }
                    end,
                },
            },
        })
    end,
}
