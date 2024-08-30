return {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
        vim.keymap.set("n", "<C-x>", "<Plug>(VM-Find-Under)")
        vim.keymap.set("v", "<C-x>", "<Plug>(VM-Find-Under)")
    end
}
