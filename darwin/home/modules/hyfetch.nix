{
  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      audo_detect_light_dark = true;
      "lightness" = 0.65;
      color_align = {
        mode = "horizontal";
      };
      backend = "fastfetch";
    };
  };
}
