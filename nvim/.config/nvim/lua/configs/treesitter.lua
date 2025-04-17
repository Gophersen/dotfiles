local options = {
    ensure_installed = {
        "bash",
        "fish",
        "json",
        "lua",
        "luadoc",
        "make",
        "markdown",
        "python",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
