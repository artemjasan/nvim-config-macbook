vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>FT", vim.cmd.NeoTreeRevealToggle)
vim.keymap.set("n", "<leader>ft", vim.cmd.Neotree)
vim.keymap.set("n", "<leader>fg", "<CMD>Neotree git_status<CR>")
vim.keymap.set("n", "<leader>n", "<CMD>NeoTreeFocus<CR>")

require("neo-tree").setup({
    filesystem = {
        hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        follow_current_file = {
            enabled = true,
        },
    },
    follow_current_file = true,
    default_component_configs = {
        container = {
            enable_character_fade = true
        },
        icon = {
            folder_empty = "󰜌",
            folder_empty_open = "󰜌",
        },
        git_status = {
            symbols = {
                renamed  = "󰁕",
                unstaged = "U",
            },
        },
    },
    document_symbols = {
        kinds = {
            File = { icon = "󰈙", hl = "Tag" },
            Namespace = { icon = "󰌗", hl = "Include" },
            Package = { icon = "󰏖", hl = "Label" },
            Class = { icon = "󰌗", hl = "Include" },
            Property = { icon = "󰆧", hl = "@property" },
            Enum = { icon = "󰒻", hl = "@number" },
            Function = { icon = "󰊕", hl = "Function" },
            String = { icon = "󰀬", hl = "String" },
            Number = { icon = "󰎠", hl = "Number" },
            Array = { icon = "󰅪", hl = "Type" },
            Object = { icon = "󰅩", hl = "Type" },
            Key = { icon = "󰌋", hl = "" },
            Struct = { icon = "󰌗", hl = "Type" },
            Operator = { icon = "󰆕", hl = "Operator" },
            TypeParameter = { icon = "󰊄", hl = "Type" },
            StaticMethod = { icon = '󰠄 ', hl = 'Function' },
        }
    },
    -- Add this section only if you've configured source selector.
    source_selector = {
        winbar = true,     -- toggle to show selector on winbar
        statusline = true, -- toggle to show selector on statusline
        sources = {
            { source = "filesystem", display_name = " 󰉓 Files " },
            { source = "git_status", display_name = " 󰊢 Git " },
        },
    },

})

