function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopeTitle", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "Matching", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none", fg = "red" })
    -- vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "none", fg = "yellow" })
    -- vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "none", fg = "blue" })
    -- vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "none", fg = "cyan" })
    -- vim.api.nvim_set_hl(0, "DiagnosticSignOk", { bg = "none", fg = "green" })
    -- vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { bg = "none", fg = "brown" })
    -- vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { bg = "none", fg = "grey" })
    -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "FloatNormal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopePreviewLine", { bg = "#3e4452" })
    -- vim.api.nvim_set_hl(0, "LspInlayHint", {bg = "none"})
end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "moon",
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
            })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    bold = true,
                    italic = false,
                    transparency = true,
                },
                highlight_groups = {
                    TelescopePreviewLine = { bg = "#3e4452" },
                    LspInlayHint = { bg = "#3e4452" }
                }
            })
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = {    -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true, -- disables setting the background color.
                show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
                term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false,           -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15,         -- percentage of the shade to apply to the inactive window
                },
                no_italic = false,             -- Force no italic
                no_bold = false,               -- Force no bold
                no_underline = false,          -- Force no underline
                styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" },   -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })
            ColorMyPencils()
        end
    },
}
