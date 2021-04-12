{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      package = pkgs.iosevka;
      name = "Iosevka Extended";
    };
    settings = {
      enable_audio_bell = false;
      shell = "zsh";
    };
  };
}
