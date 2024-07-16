return {
    'AckslD/muren.nvim',
    config = function()
        vim.keymap.set("n", "<leader>r", require('muren.api').toggle_ui, {})
        vim.keymap.set("n", "<leader>R", require('muren.api').open_fresh_ui, {})
    end
}
