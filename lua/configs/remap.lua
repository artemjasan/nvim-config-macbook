vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<A-k>", "<Cmd>m .-2<CR>")
vim.keymap.set("n", "<A-j>", "<Cmd>m .+1<CR>")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "<leader>tm", "<CMD>!tmux split-window -h -p 40<CR>")
vim.keymap.set("n", "T", ":!")

vim.keymap.set("n", "<leader>y", "vey")
vim.keymap.set("n", "<leader>p", "vep")

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")

