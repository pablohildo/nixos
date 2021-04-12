{ config, pkgs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/kitty.nix
    ./programs/zsh.nix
    ./programs/fzf.nix
   ];
  
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "pablo";
  home.homeDirectory = "/home/pablo";
  
  nixpkgs.config.allowUnfree = true; 

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
  
  home.packages = with pkgs; [
    htop
    stalonetray
    emacs
    elixir
    git
    iosevka
    kitty
    xmobar
    rofi
    vscode
    slack
    tdesktop
    gcc
    vcsh
    cmake
    zsh
    fzf
    oh-my-zsh
  ];

  programs.home-manager = {
    enable = true;
    path = "...";
  };
}
