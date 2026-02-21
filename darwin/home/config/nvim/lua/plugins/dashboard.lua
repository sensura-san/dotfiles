return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local logo = [[
 ______ |\        __                 __         _ 
 \     \| | ____ |  | __ ____ ___  ____| _____ | |
 /   |    |/ __ \|  |/ // __ \\  \/ /  |/     \| |
/    |\   |  ___/_    \(  \_\ )\   /|  |  | |  \\|
\____| \  /\___  /__|_ \\____/  \_/ |__|__|_|  /__
        \/     \/     \/                     \/ \/
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    opts.config.header = vim.split(logo, "\n")
  end,
}
