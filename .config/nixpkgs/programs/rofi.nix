{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    terminal = "kitty";
    theme = ./arthur.rasi;
  };
}
