return {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons' -- optional, for file icon
    },
    config = function()
        require 'nvim-tree'.setup {
            hijack_netrw = false,
            view = {
                relativenumber = true,
                width = 50
            },
            update_focused_file = {
                enable = true,
                -- update_root = false,
                -- ignore_list = {},
            },
        }
    end
}
