vim.cmd("set termguicolors")

vim.cmd("colorscheme gruvbox")
vim.cmd("set background=dark")

require("indent_blankline").setup {
    space_char_blankline = " ",
}

vim.cmd("let g:dashboard_default_executive ='telescope'")
require("indent_blankline").setup {
    char = "▏",
    buftype_exclude = {"terminal", "dashboard", "nofile"},
    filetype_exclude = {"dashboard", "terminal", "git", "octo"},
    show_current_context = true,
    use_treesitter = true,
    show_end_of_line = true
}
