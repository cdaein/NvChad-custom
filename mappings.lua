---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!
M.tree = {
  n = {
    -- toggle tree
    ["<leader>e"] = { ":NvimTreeToggle<CR>", "nvim-tree: toggle" },
    -- toggle focus
    ["<leader>o"] = {
      function()
        local api = require("nvim-tree.api")
        if vim.fn.bufname():match "NvimTree_" then
          vim.cmd.wincmd "p"
        else
          api.tree.open({ focus = true, find_file = true})
        end
      end,
      "Toggle Explorer Focus",
    }
  }
}


return M
