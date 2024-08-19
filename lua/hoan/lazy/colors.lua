function ColorMyPencils(color)
    color = color or "kanagawa"
    vim.cmd.colorscheme(color)
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
end

return {

    {
        "erikbackman/brightburn.vim",
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = false,    -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark",   -- style for floating windows
                },
            })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = false,
                variant = "moon",      -- auto, main, moon, or dawn
                dark_variant = "moon", -- main, moon, or dawn
                transparent = false,
                styles = {
                    italic = false,
                },
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
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                theme = "wave",        -- Load "wave" theme when 'background' option is not set
                background = {
                    dark = "dragon",   -- Load "dragon" theme when 'background' option is set to "dark"
                    light = "wave",    -- Load "wave" theme when 'background' option is set to "light"
                }
            })
            ColorMyPencils("kanagawa")
        end

    },
    {
        "eldritch-theme/eldritch.nvim",
        config = function()
            require("eldritch").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                transparent = false,    -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark",            -- style for sidebars, see below
                    floats = "dark",              -- style for floating windows
                },
                sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
                hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
                dim_inactive = false,             -- dims inactive windows, transparent must be false for this to work
                lualine_bold = true,              -- When `true`, section headers in the lualine theme will be bold

                --- You can override specific color groups to use other groups or a hex color
                --- function will be called with a ColorScheme table
                ---@param colors ColorScheme
                on_colors = function(colors) end,

                --- You can override specific highlights to use other groups or a hex color
                --- function will be called with a Highlights and ColorScheme table
                ---@param highlights Highlights
                ---@param colors ColorScheme
                on_highlights = function(highlights, colors) end,
            })
        end
    },
    {
        "sainnhe/everforest",
        config = function()
            vim.g.everforest_enable_italic = true
            vim.g.everforest_background = 'medium'
        end
    },
    {
        "vague2k/vague.nvim",
        config = function()
            require("vague").setup({
                transparent = true
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
                    dark = "macchiato",
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
        end
    }
}
