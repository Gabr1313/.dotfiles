vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = '[G]it [S]tatus' })

local gabri_Fugitive = vim.api.nvim_create_augroup("gabri_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
  group = gabri_Fugitive,
  pattern = "*",
  callback = function()
    if vim.bo.ft ~= "fugitive" then
      return
    end

    local bufnr = vim.api.nvim_get_current_buf()
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>p", function()
      vim.cmd.Git('push')
    end, opts, { desc = 'Git [P]ush' })

    -- rebase always
    vim.keymap.set("n", "<leader>P", function()
      vim.cmd.Git({ 'pull', '--rebase' })
    end, opts, { desc = 'Git [P]ull' })

    -- NOTE: It allows me to easily set the branch I am pushing and any tracking
    -- needed if I did not set the branch up correctly
    -- vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts, {desc='Git push -u origin'});
  end,
})
