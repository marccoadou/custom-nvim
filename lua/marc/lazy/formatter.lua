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
                rust = {
                    function ()
                        return {
                            exe = "rustfmt",
                            args ={ "--emit=stdout" },
                            stdin = true,
                        }
                    end
                },
                -- lua = {
                --     function ()
                --         return {
                --             exe = "lua-format",
                --             args = { "--indent-width=2", "--column-limit=80" },
                --             stdin = true,
                --         }
                --     end
                -- }
            },
        })
    end,
}
