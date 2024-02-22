local M = {}
function M.config()
    require("interestingwords").setup {
        colors = { "#8CCBEA", "#A4E57E", "#FFDB72", "#FF7272", "#FFB3FF", "#9999FF" },
        search_count = true,
        navigation = true,
        search_key = "<leader>m",
        cancel_search_key = "<leader>M",
        color_key = "<leader>k",
        cancel_color_key = "<leader>K",
    }
end

return M
