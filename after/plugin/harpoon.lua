local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', "<leader>a", mark.add_file)
vim.keymap.set('n', "<leader>hh", ui.toggle_quick_menu)

local function get_current_harpoon_index()
    local current_buf = vim.api.nvim_get_current_buf()
    local current_file = vim.api.nvim_buf_get_name(current_buf)
    return mark.get_index_of(current_file) -- Use 'mark' instead of 'harpoon_mark'
end

vim.keymap.set('n', "<C-x>", function() 
    local index = get_current_harpoon_index()
    if index == nil then 
        index = 0 
    else 
        index = index - 1 
    end
    index = (index + 1) % mark.get_length() -- Wrap around using mod
    ui.nav_file(index + 1)
end)

vim.keymap.set('n', "<C-z>", function() 
    local index = get_current_harpoon_index()
    if index == nil then 
        index = 0 
    else 
        index = index - 1 
    end
    index = index - 1
    if index < 0 then 
        index = mark.get_length() - 1 
    end
    ui.nav_file(index + 1)
end)

