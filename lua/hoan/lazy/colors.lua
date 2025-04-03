function ColorMyPencils(color)
    color = color or "kanagawa"
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
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            -- Default options:
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none"
                            }
                        }
                    }
                },
                overrides = function(colors)
                    local theme = colors.theme
                    local makeDiagnosticColor = function(color)
                        local c = require("kanagawa.lib.color")
                        return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
                    end
                    return {
                        NormalFloat                = { bg = "none" },
                        FloatBorder                = { bg = "none" },
                        FloatTitle                 = { bg = "none" },

                        -- Save an hlgroup with dark background and dimmed foreground
                        -- so that you can use it where your still want darker windows.
                        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                        NormalDark                 = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

                        -- Popular plugins that open floats will link to NormalFloat by default;
                        -- set their background accordingly if you wish to keep them dark and borderless
                        LazyNormal                 = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        MasonNormal                = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        Pmenu                      = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                        PmenuSel                   = { fg = "NONE", bg = theme.ui.bg_p2 },
                        PmenuSbar                  = { bg = theme.ui.bg_m1 },
                        PmenuThumb                 = { bg = theme.ui.bg_p2 },
                        TelescopeTitle             = { fg = theme.ui.special, bold = true },
                        TelescopePromptNormal      = { bg = theme.ui.bg_p1 },
                        TelescopePromptBorder      = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
                        TelescopeResultsNormal     = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
                        TelescopeResultsBorder     = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
                        TelescopePreviewNormal     = { bg = theme.ui.bg_dim },
                        TelescopePreviewBorder     = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
                        DiagnosticVirtualTextHint  = makeDiagnosticColor(theme.diag.hint),
                        DiagnosticVirtualTextInfo  = makeDiagnosticColor(theme.diag.info),
                        DiagnosticVirtualTextWarn  = makeDiagnosticColor(theme.diag.warning),
                        DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
                    }
                end,
                theme = "wave",    -- Load "wave" theme when 'background' option is not set
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })

            -- setup must be called before loading
        end
    },
    {
        'sainnhe/everforest',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.everforest_enable_italic = true
            vim.g.everforest_background = 'hard'
        end
    }
}
