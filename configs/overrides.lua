local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = true
  },
  view = {
    hide_root_folder = false,
  },
  git = {
    enable = true,
  },

  renderer = {
    root_folder_label = ":t",
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
