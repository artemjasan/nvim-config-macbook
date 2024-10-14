local lsp = require('lsp-zero').preset({})

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local lsp_format_on_save = function(bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format()
        end,
    })
end

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    lsp.default_keymaps({ buffer = bufnr })
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    lsp_format_on_save(bufnr)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

-- this is the function that loads the extra snippets to luasnip
-- from rafamadriz/friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
    },
    formatting = lsp.cmp_format({ details = false }),
    mapping = cmp.mapping.preset.insert({
        ['<A-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<A-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<A-v>'] = cmp.mapping.confirm({ select = true }),
        ['<A-b>'] = cmp.mapping.complete(),
    }),
})

lsp.setup()
