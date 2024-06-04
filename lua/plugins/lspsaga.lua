return {
    {
        "nvimdev/lspsaga.nvim",
        event = "VeryLazy",
        opts = {
            lightbulb = {
                enable = false,
                sign = true,
                debounce = 10,
                sign_priority = 40,
                virtual_text = true,
                enable_in_insert = true,
            },
            diagnostic = {
                show_code_action = true,
                show_layout = "float",
                show_normal_height = 10,
                jump_num_shortcut = true,
                max_width = 0.8,
                max_height = 0.6,
                max_show_width = 0.9,
                max_show_height = 0.6,
                text_hl_follow = true,
                border_follow = true,
                wrap_long_lines = true,
                extend_relatedInformation = false,
                diagnostic_only_current = true,
                keys = {
                    exec_action = "o",
                    quit = "q",
                    toggle_or_jump = "<CR>",
                    quit_in_show = { "q", "<ESC>" },
                },
            },
            finder = {
                keys = {
                    toggle_or_open = "<CR>",
                },
            },
        },
    },
}
