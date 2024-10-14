require("monokai-pro").setup({
    transparent_background = false,
    terminal_colors = false,
    devicons = true,
    filter = "spectrum",       -- classic | octagon | pro | machine | ristretto | spectrum
    inc_search = "background", -- underline | background
    background_clear = {},
    plugins = {
        bufferline = {
            underline_selected = false,
            underline_visible = false,
            bold = false,
        },
        indent_blankline = {
            context_highlight = "pro", -- default | pro
            context_start_underline = true,
        },
    },
})
vim.cmd([[colorscheme monokai-pro]])
