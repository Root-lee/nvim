return {
    "ahmedkhalf/project.nvim",
    config = function()
        require("project_nvim").setup({
            detection_methods = { "pattern" },
            patterns = { ".clang-format", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
            silent_chdir = false,
        })
    end,
}
