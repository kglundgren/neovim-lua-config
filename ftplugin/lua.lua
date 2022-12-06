local map = vim.api.nvim_set_keymap -- Shorten function call.
local opts = { noremap = true, silent = true }

map("n", "<leader>kc", "<S-i>-- <Esc>", opts) -- Comment line.
map("v", "<leader>kc", ":norm i-- <CR>", opts) -- Comment selected lines.
