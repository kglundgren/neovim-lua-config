local map = vim.api.nvim_set_keymap -- Shorten function call.
local opts = { noremap = true, silent = true }

map('n', '<Space>', '<Nop>', opts) -- Remap space as leader key.
vim.g.mapleader = ' '

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Leader
map('n', '<leader>e', ':Lex<CR>', opts) -- Open netrw with \e.
map('n', '<leader>x', ':q<CR>', opts) -- Quit with \x.
map('n', '<leader>n', ':bnext<CR>', opts) -- Navigate buffers.
map('n', '<leader>b', ':bprevious<CR>', opts)
map('n', '<leader>l', ':set nohlsearch!<CR>', opts)
map("n", "<leader>kc", "<S-i>// <Esc>", opts) -- Comment line.
map("v", "<leader>kc", ":norm i// <CR>", opts) -- Comment selected lines.
map("n", "<leader>ku", "^3x", opts) -- Uncomment line.
map("v", "<leader>ku", ":norm ^3x<CR>", opts) -- Uncomment selected lines.

-- Windows-specific bindings
if (vim.loop.os_uname().sysname == "Windows_NT") then
    map('n', '<C-c>', '<S-v>"*y', opts) -- Copy line with Ctrl+C.
end

-- Normal
map('n', '<A-h>', '<C-w>h', opts) -- Better window navigation.
map('n', '<A-j>', '<C-w>j', opts)
map('n', '<A-k>', '<C-w>k', opts)
map('n', '<A-l>', '<C-w>l', opts)
map('n', '<F2>', ':set invpaste paste?<CR>', opts) -- Toggle paste mode with F2.
map('n', '<A-Up>', ':resize +2<CR>', opts) -- Resize with arrows.
map('n', '<A-Down>', ':resize -2<CR>', opts)
map('n', '<A-Left>', ':vertical resize -2<CR>', opts)
map('n', '<A-Right>', ':vertical resize +2<CR>', opts)

-- Visual
map('v', '<', '<gv', opts) -- Indent, and stay in indent mode.
map('v', '>', '>gv', opts)
map('v', '<A-j>', ':m .+1<CR>==', opts) -- Move text up and down.
map('v', '<A-k>', ':m .-2<CR>==', opts)
map("v", "p", '"_dP', opts) -- Disable regular (annoying) visual paste behavior.

-- Visual Block
map('x', '<A-j>', ":move '>+1<CR>gv-gv", opts) -- Move text up and down
map('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)
