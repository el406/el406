require('neo-tree').setup({
    window = {
      mappings = {
        ["J"] = function(state)
          local tree = state.tree
          local node = tree:get_node()
          local siblings = tree:get_nodes(node:get_parent_id())
          local renderer = require('neo-tree.ui.renderer')
          renderer.focus_node(state, siblings[#siblings]:get_id())
        end,
        ["K"] = function(state)
          local tree = state.tree
          local node = tree:get_node()
          local siblings = tree:get_nodes(node:get_parent_id())
          local renderer = require('neo-tree.ui.renderer')
          renderer.focus_node(state, siblings[1]:get_id())
        end
      }
    }
  })

vim.keymap.set('n',"<leader>ft",vim.cmd.Neotree)
