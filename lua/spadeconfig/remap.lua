vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>nn", function()
local file_name = vim.fn.input("Enter filename:")
if file_name == '' then file_name = "default.txt" end
vim.cmd('edit ' .. vim.fn.expand('%:h').. file_name)
vim.cmd(':w')
end)
