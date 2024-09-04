return {
    "Root-lee/formatter.nvim",
    config = function()
        -- Utilities for creating configurations
        local util = require("formatter.util")

        -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
        require("formatter").setup({
            -- Enable or disable logging
            logging = true,
            -- Set the log level
            log_level = vim.log.levels.WARN,
            -- All formatter configurations are opt-in
            filetype = {
                -- Formatter configurations for filetype "lua" go here
                -- and will be executed in order
                lua = {
                    -- "formatter.filetypes.lua" defines default configurations for the
                    -- "lua" filetype
                    require("formatter.filetypes.lua").stylua,
                },
                go = {
                    require("formatter.filetypes.go").gofmt,
                    require("formatter.filetypes.go").goimports,
                    require("formatter.filetypes.go").goimports_reviser,
                },
                c = {
                    require("formatter.filetypes.c").clangformat,
                },
                cpp = {
                    require("formatter.filetypes.cpp").clangformat,
                },
                rust = {
                    require("formatter.filetypes.rust").rustfmt,
                },
                json = {
                    require("formatter.filetypes.json").jq,
                },
                sh = {
                    require("formatter.filetypes.sh").shfmt,
                },
                proto = {
                    require("formatter.filetypes.proto").buf_format,
                },
                -- Use the special "*" filetype for defining formatter configurations on
                -- any filetype
                ["*"] = {
                    -- "formatter.filetypes.any" defines default configurations for any
                    -- filetype
                    require("formatter.filetypes.any").remove_trailing_whitespace,
                },
            },
        })
    end,
}
