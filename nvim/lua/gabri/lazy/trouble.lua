return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup()

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle()
            end)

            vim.keymap.set("n", "]]", function()
                require("trouble").next({skip_groups = true, jump = true, desc = 'Next [T]rouble' })
            end)

            vim.keymap.set("n", "[[", function()
                require("trouble").previous({skip_groups = true, jump = true, desc = 'Previous [T]rouble' });
            end)

        end
    },
}