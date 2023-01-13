require("nvim-tree").setup({
  open_on_setup = false,
  sort_by = "case_sensitive",
  view = {
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "P", action = "cd" },
      },
    },
  },
  renderer = {
    icons = {
      webdev_colors = false,
    },
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
  },
  filters = {
    dotfiles = true,
  },
})
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)

