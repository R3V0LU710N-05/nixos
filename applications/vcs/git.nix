# git.nix, for Version Control

{ pkgs, ... }:

{
  programs.git = {
    enable = true;

    config = {
      user.name = "R3V0LU710N-05";
      user.email = "R3V0LU710N_05@proton.me";
    };
  };

  users.users.lichen.packages = [
    pkgs.gh
  ];
}
