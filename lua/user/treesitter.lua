local configs = require("nvim-treesitter.configs")
configs.setup {
    ensure_installed = {
        "c",
        "cpp",
        "lua",
    },
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing.
    highlight = {
        enable = true, -- False will disable the whole extension.
        disable = { "" }, -- List of language that will be disabled.
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },
}
