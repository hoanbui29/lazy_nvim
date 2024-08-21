return {
    'stevearc/conform.nvim',
    opts = {
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
        formatters = {
            xmlformat = {
                cmd = { "xmlformat" },
                args = { "--selfclose", "-" },
            },
        },
        formatters_by_ft = {
            cs = { "csharpier" },
            go = { "gofumpt" },
            html = { "prettier" },
            json = { "prettier" },
            lua = { "stylua" },
            markdown = { "prettier", "injected" },
            xml = { "xmlformat" },
            -- yaml = { "yamlfix" },
        },
    },
    config = function()
        require("conform").setup({
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_format = "fallback",
            },
        })
    end
}
