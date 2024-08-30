--Function
-- function insert_csharp_xmldoc()
--     local lines = {
--         '/// <summary>',
--         '/// ',
--         '/// </summary>'
--     }
--     -- Insert the lines at the current cursor position
--     vim.api.nvim_put(lines, 'c', false, false)
-- end

function filePathToNamespace(filePath, className)
    local pathSeparator = package.config:sub(1, 1)                                             -- Detects the path separator for the OS
    local relativePath = filePath:gsub(vim.fn.getcwd() .. pathSeparator, ""):gsub(pathSeparator .. className, "")
    local namespace = relativePath:gsub("src.", ""):gsub(pathSeparator, "."):gsub("%.cs$", "") -- Replace separators and remove file extension
    return namespace
end

-- Function to generate C# class
function generateCSharpClass()
    local currentFileName = vim.fn.expand('%:t')
    local className = currentFileName:match("([^%.]+)")
    local namespace = filePathToNamespace(vim.fn.expand('%:p'), className)

    local csharpCode = { "namespace " .. namespace .. ";",
        "",
        "public class " .. className .. "",
        "{",
        "}",
    }
    vim.api.nvim_put(csharpCode, 'l', false, true)
end

-- Keymap


-- Key map

local ex_to_current_file = function()
    local cur_file = vim.fn.expand('%:t')
    vim.cmd.Ex()
    vim.fn.search('^' .. cur_file .. '$')
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ex_to_current_file)

vim.api.nvim_set_keymap('n', '<C-q>', ':lua generateCSharpClass()<CR>', { noremap = true, silent = true })
-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
-- Allow move code up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor stable when join lines with J command
vim.keymap.set("n", "J", "mzJ`z")

-- Allow half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Paste the docs in clipboard while not take overrided docs -> Allows paste continuously
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])
-- vim.keymap.set({ "n", "v" }, "c", [["+c]])
-- vim.keymap.set("n", "C", [["+C]])
-- vim.keymap.set({ "n", "v" }, "x", [["+x]])

-- Cut to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["+x]])

-- This is going to get me cancelled
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Q command
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<C-Space>", "<cmd>lua vim.lsp.buf.code_action()<CR>")

-- Quick fix navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/hoan/packer.lua<CR>");
vim.keymap.set("n", "<leader>vpr", "<cmd>e ~/.config/nvim/lua/hoan/remap.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.api.nvim_set_keymap('n', '<leader>K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true });

-- vim.api.nvim_set_keymap('n', '<C-/>', '<cmd>lua insert_csharp_xmldoc()<CR>', { noremap = true, silent = true })

--Nvim tree navigation
-- vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle()<CR>")
-- vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus()<CR>")
-- vim.keymap.set("n", "<leader>tg", "<cmd>NvimTreeFindFile()<CR>")
-- vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse()<CR>")

--vim.api.nvim_set_keymap('n', '<C-q>', '<C-w>h', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-w>', '<C-w>l', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>n>', vim.lsp.buf.rename, {})

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- Remove seach highlight
vim.keymap.set('n', '<Leader>l', '<Cmd>noh<CR>', opts)
