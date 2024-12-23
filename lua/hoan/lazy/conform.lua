return {
    'stevearc/conform.nvim',
    opts = {
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
            yaml = { "yamlfix" },
            rust = { "rustfmt" },
            lua = { "stylua" },
        },
    },
    config = function()
        local conform = require("conform")
        conform.setup({
            format_after_save = {
                lsp_format = "fallback", },
        })
    end
}
