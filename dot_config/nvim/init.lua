-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Use the right clipboard when on WSL
local function is_wsl()
  local wsl_check = os.getenv("WSL_DISTRO_NAME") ~= nil
  return wsl_check
end

-- Install win32yank with cargo and then run:
-- sudo ln -s /mnt/c/Users/jared/.cargo/bin/win32yank.exe /usr/local/bin/win32yank
if is_wsl() then
  vim.g.clipboard = {

    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank -i --crlf",
      ["*"] = "win32yank -i --crlf",
    },

    paste = {
      ["+"] = "win32yank -o --lf",
      ["*"] = "win32yank -o --lf",
    },
    cache_enabled = 1,
  }
end
