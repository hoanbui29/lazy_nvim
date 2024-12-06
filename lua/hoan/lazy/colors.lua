function ColorMyPencils(color)
    color = color or "tokyonight"
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
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                -- functionStyle = { bold = true, italic = true },
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                -- typeStyle = { bold = true },
                transparent = true,    -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                background = {
                    dark = "wave",     -- Load "dragon" theme when 'background' option is set to "dark"
                    light = "lotus",   -- Load "wave" theme when 'background' option is set to "light"
                },
                overrides = function(colors)
                    local theme = colors.theme
                    return {
                        -- TelescopePreviewLine = { bg = theme.ui.bg_p1 },
                    }
                end,
            })
            ColorMyPencils()
        end

    },
}
