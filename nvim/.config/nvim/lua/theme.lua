vim.cmd("set termguicolors")

vim.cmd("colorscheme gruvbox")
vim.cmd("set background=dark")


vim.cmd("let g:dashboard_default_executive ='telescope'")
require("indent_blankline").setup {
    space_char_blankline = " ",
    char = "▏",
    buftype_exclude = {"terminal", "dashboard", "nofile"},
    filetype_exclude = {"dashboard", "terminal", "git", "octo"},
    show_current_context = true,
    use_treesitter = true,
    show_end_of_line = true
}
