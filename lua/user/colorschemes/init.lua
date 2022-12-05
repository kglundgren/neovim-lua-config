-- local colorscheme = 'default-custom' -- Default colorscheme, edited to work with the Windows Terminal.
-- local colorscheme = 'gruvbox'
local colorscheme = 'tokyonight'

if colorscheme == 'tokyonight' then
    local config_status_ok, config = pcall(require, 'user.colorschemes.tokyonight_config')
    local tokyonight_status_ok, tokyonight = pcall(require, 'tokyonight')
    if tokyonight_status_ok and config_status_ok then
        tokyonight.setup(config)
    end
end

if not pcall(vim.cmd, 'colorscheme ' .. colorscheme) then
    vim.notify("Colorscheme " .. colorscheme .. " not found!")
    vim.notify("Falling back to default colorscheme.")
    vim.cmd('colorscheme default-custom')
    return
end
