{
  programs.git = {
    enable = true;
    settings = {
      user.name  = "sensura-san";
      user.email = "gohzhixuan2006@gmail.com";
      init.defaultBranch = "main";
      pull.rebase = true;
      core.editor = "nvim";
      # url."ssh://git@github.com/".insteadOf = "https://github.com/";
    };
  };
}

