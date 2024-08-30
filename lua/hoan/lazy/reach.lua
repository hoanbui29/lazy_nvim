return {
    "toppair/reach.nvim",
    config = function()
        require('reach').setup({
            notification = true
        })

        -- Example keymapping
        vim.keymap.set('n', '<leader>b', function() require('reach').buffers(buffer_options) end, {})
    end
}
