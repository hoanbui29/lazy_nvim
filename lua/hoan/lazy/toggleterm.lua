return {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
        require("toggleterm").setup({
            highlights = {
                -- highlights which map to a highlight group name and a table of it's values
                Normal = {
                    guibg = 'none',
                }
            },
        })
    end
}
