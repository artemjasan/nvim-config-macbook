require 'lspconfig'.pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                rope_completion = {
                    enabled = true
                },
                rope_autoimport = {
                    enabled = true
                },
                ruff = {
                    enabled = true,
                    lineLength = 120,
                    ignore = { 'D107', 'D100' }
                },
            }
        }
    }
}
