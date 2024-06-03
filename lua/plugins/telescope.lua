return {
    "nvim-telescope/telescope.nvim",
    version = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "tomasky/bookmarks.nvim",
    },
    config = function()
        require("telescope").load_extension("bookmarks")
    end,
}
