-- Configure LazyVim to load catppuccin
return {
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
