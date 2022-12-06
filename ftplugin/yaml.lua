local map = vim.api.nvim_set_keymap -- Shorten function call.
local opts = { noremap = true, silent = true }

map("n", "<leader>kc", "<S-i># <Esc>", opts) -- Comment line.
map("v", "<leader>kc", ":norm i# <CR>", opts) -- Comment selected lines.
map("n", "<leader>ku", "^2x", opts) -- Uncomment line.
map("v", "<leader>ku", ":norm ^2x<CR>", opts) -- Uncomment selected lines.
