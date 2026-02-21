-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- floating window transparency
vim.o.winblend = 20

-- neovide config
if vim.g.neovide then
  vim.o.guifont = "Berkeley_Mono:h13"

  -- Cursor settings
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_density = 1.5
  vim.g.neovide_cursor_vfx_particle_lifetime = 0.8

  -- Window Settings
  vim.g.neovide_normal_opacity = 0.98
  vim.g.neovide_hide_mouse_when_typing = true

  -- Floating window settings
  vim.g.neovide_floating_corner_radius = 0.5
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- WINDOWS ONLY: change title bar color based on mode (based on lualine config)
  -- startup
  local hl_init = vim.api.nvim_get_hl(0, { name = "Normal" })
  vim.g.neovide_title_background_color = string.format("#%06x", hl_init.bg)

  -- subsequent cmd changes / color changes
  vim.api.nvim_create_autocmd({ "ModeChanged", "ColorScheme" }, {
    callback = function()
      local mode = vim.api.nvim_get_mode().mode
      local hl_name

      if mode == "n" or mode == "no" then
        hl_name = "lualine_a_normal"
      elseif mode == "i" then
        hl_name = "lualine_a_insert"
      elseif mode == "v" or mode == "v" or mode == "\22" then
        hl_name = "lualine_a_visual"
      elseif mode == "r" or mode == "R" then
        hl_name = "lualine_a_replace"
      elseif mode == "c" then
        hl_name = "lualine_a_command"
      else
        hl_name = "lualine_a_inactive"
      end

      local hl = vim.api.nvim_get_hl(0, { name = hl_name })
      vim.g.neovide_title_background_color = string.format("#%06x", hl.bg or hl_init.bg)
    end,
  })

  -- ----- macOS Only -----
  vim.g.neovide_window_blurred = true
  vim.g.neovide_highlight_matching_pair = true
end
