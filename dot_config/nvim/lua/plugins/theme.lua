return {
  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    priority = 1000,
    lazy = false,
    opts = {
      colorscheme = "catppuccin",
    },
  },
  { "vague-theme/vague.nvim" },
  { "ellisonleao/gruvbox.nvim" },
}
