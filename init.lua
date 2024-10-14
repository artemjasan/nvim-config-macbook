require("configs")

function _G.open_keybindings_floating_window()
    local init_lua_path = vim.fn.stdpath('config')

    local keybindings_file = init_lua_path .. '/keybindings.md'

    vim.cmd('Glow ' .. keybindings_file)
end

vim.api.nvim_create_user_command('Keybindings', open_keybindings_floating_window, {})

vim.api.nvim_set_keymap('n', '<leader>h?', ':Keybindings<CR>',
    { noremap = true, silent = true })

