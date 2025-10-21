vim.keymap.set({ "n", "v" }, "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>i", { desc = "Save file", noremap = true, silent = true })

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- -- Buffer navigation
-- vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
-- vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-S-k>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-S-j>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-S-h>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-S-l>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

vim.keymap.set("n", "<leader>ec", "<Cmd>e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })
