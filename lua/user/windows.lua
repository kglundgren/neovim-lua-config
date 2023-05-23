return function()
	if (vim.loop.os_uname().sysname == "Windows_NT") then
		return true
	else
		return false
	end
end
