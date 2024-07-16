return
{
    "Cliffback/netcoredbg-macOS-arm64.nvim",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
        require('netcoredbg-macOS-arm64').setup(require('dap'))

        local opts = {}

        vim.api.nvim_set_keymap('n', '<F5>', "<Cmd>lua require'dap'.continue()<CR>", opts)
        vim.api.nvim_set_keymap('n', '<F10>', "<Cmd>lua require'dap'.step_over()<CR>", opts)
        vim.api.nvim_set_keymap('n', '<F11>', "<Cmd>lua require'dap'.step_into()<CR>", opts)
        vim.api.nvim_set_keymap('n', '<F12>', "<Cmd>lua require'dap'.step_out()<CR>", opts)
        vim.api.nvim_set_keymap('n', '<Leader>b', "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
        vim.api.nvim_set_keymap('n', '<Leader>B',
            "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
        vim.api.nvim_set_keymap('n', '<Leader>lp',
            "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
        vim.api.nvim_set_keymap('n', '<Leader>dr', "<Cmd>lua require'dap'.repl.open()<CR>", opts)
        vim.api.nvim_set_keymap('n', '<Leader>dl', "<Cmd>lua require'dap'.run_last()<CR>", opts)
    end
}
