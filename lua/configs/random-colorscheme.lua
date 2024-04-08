local M = {}
function M.config()
    require 'random-colorscheme'.setup(
        {
            random_on_startup = false,
            exclude_default_colorschems = true,
            colorschemes = {
                "everforest",
                "tokyonight",
                "kanagawa",
                "monokai",
                "catppuccin",
            },
            show_current = true,
        }
    )
end

return M
