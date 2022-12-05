-- vim.opt: Set list and map-style options.
-- vim.g: Set global editor variables.
-- vim.cmd: Executes an 'ex' command, like 'language en' or 'set path+=**'.

vim.cmd('language messages en') -- Set ui and message language to English.
vim.cmd('set path+=**') -- Enables :find to search directories recursively.
vim.cmd('set wildmenu') -- Enables tab-completion of files when using :find to search.
vim.cmd('set showtabline=1') -- Show tab-line only if there are at least two tab pages.
vim.cmd('set nowrap') -- No line-wrapping on long lines.

-- Python --
vim.g.python_host_prog = 'C:\\Python27\\python.exe'
vim.g.python3_host_prog = 'C:\\Program Files\\Python39\\python.exe'

-- Netrw --
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 30

-- Autocmds -- 
-- Tab settings per filetype.
-- autocmd FileType c setlocal shiftwidth=4
-- autocmd FileType javascript setlocal shiftwidth=4
-- autocmd FileType html setlocal shiftwidth=4
-- autocmd FileType css setlocal shiftwidth=4

local options = {
    termguicolors = true, -- Enable more colors.
    background = 'dark',

    number = true,
    relativenumber = true,
    mouse = 'a',

    -- Tab settings --
    -- expandtab:     When this option is enabled, vi will use spaces instead of tabs.
    -- tabstop:       Width of tab character.
    -- softtabstop:   Affects the distance moved when pressing <Tab> or <BS>.
    -- shiftwidth:    Affects automatic indentation.
    expandtab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end