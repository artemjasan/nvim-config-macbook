vim.opt.termguicolors = true
require("bufferline").setup({
    options = {
        themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = "nvim_lsp",     -- | "nvim_lsp" | "coc",
        -- separator_style = "", -- | "thick" | "thin" | "slope" | { 'any', 'any' },
        separator_style = { "", "" }, -- | "thick" | "thin" | { 'any', 'any' },
        indicator = {
            icon = '├─ ',
            style = "icon",
        },
        offsets = {
            {
                filetype = "neo-tree",
                text = "EXPLORER",
                text_align = "center",
            },
        },
        hover = {
            enabled = true,
            delay = 0,
            reveal = { "close" },
        },
        tab_size = 20,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
    },
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>t1', '<Cmd>BufferLineGoToBuffer 1<CR>', opts);
map('n', '<leader>t2', '<Cmd>BufferLineGoToBuffer 2<CR>', opts);
map('n', '<leader>t3', '<Cmd>BufferLineGoToBuffer 3<CR>', opts);
map('n', '<leader>t4', '<Cmd>BufferLineGoToBuffer 4<CR>', opts);
map('n', '<leader>t5', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', '<leader>t6', '<Cmd>BufferLineGoToBuffer 6<CR>', opts);
map('n', '<leader>t7', '<Cmd>BufferLineGoToBuffer 7<CR>', opts);
map('n', '<leader>t8', '<Cmd>BufferLineGoToBuffer 8<CR>', opts);
map('n', '<leader>t9', '<Cmd>BufferLineGoToBuffer 9<CR>', opts);

map('n', '<leader>tq', '<Cmd>bdelete<CR>', opts);

map('n', '<leader>t.', '<Cmd>BufferLineCycleNext<CR>', opts);
map('n', '<leader>t,', '<Cmd>BufferLineCyclePrev<CR>', opts);

map('n', '<leader>t>', '<Cmd>BufferLineMoveNext<CR>', opts);
map('n', '<leader>t<', '<Cmd>BufferLineMovePrev<CR>', opts);

--map('n', '<leader>tc', '<Cmd>BufferLineCyclePrev<CR>:bdelete #<CR>', opts);
