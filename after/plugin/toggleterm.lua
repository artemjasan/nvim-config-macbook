require("toggleterm").setup {
    open_mapping = [[<C-t>]],
    direction = 'vertical',
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end
}

local function run_in_toggleterm(args)
    local command = args.args

    vim.cmd("TermExec cmd='" .. command .. "'")
end

vim.api.nvim_create_user_command(
    'TT',
    run_in_toggleterm,
    { nargs = "*", desc = "Run command in a new ToggleTerm terminal" }
)

vim.keymap.set("n", "<leader>tt", ":TT ");

