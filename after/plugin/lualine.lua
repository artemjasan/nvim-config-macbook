require('lualine').setup({
    options = {
        theme = 'nightfly',
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },

    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'diff', 'diagnostics' },
    }
})
