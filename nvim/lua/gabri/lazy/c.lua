return {
    "rose-pine/neovim",
        config = function()
        require('rose-pine').setup({
            disable_background = true,
            disable_flaoat_background = true,
        })
        vim.cmd.colorscheme("rose-pine")
    end
}
