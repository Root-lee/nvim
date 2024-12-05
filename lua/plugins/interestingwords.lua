return {
    "Root-lee/interestingwords.nvim",
    priority = 40,
    config = function()
        require("interestingwords").setup({
            colors = {
                "#8CCBEA",
                "#A4E57E",
                "#FFDB72",
                "#FF7272",
                "#FFB3FF",
                "#9999FF",
                "#FFB6C1",
                "#FFA500",
                "#00FFFF",
                "#00BFFF",
            },
            search_count = true,
            navigation = true,
            scroll_center = false,
            search_key = "<leader>mmmmmm",
            cancel_search_key = "<leader>MMMMMM",
            color_key = "<leader>k",
            cancel_color_key = "<leader>K",
        })
    end,
}
