vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":Telescope find_files<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>fb", ":Telescope buffers<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>fh", ":Telescope help_tags<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>pp", ":lua require'telescope'.extensions.project.project{}<CR>", {})

require('telescope').setup{
  defaults = {
    winblend = 0,
    layout_config = {
      width = 0.75,
      preview_cutoff = 120,
    },
    border = {},
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
