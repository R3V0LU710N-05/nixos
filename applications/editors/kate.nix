# kate text editor config
{ pkgs, ... }:

{
  imports = [
    ../vcs/git.nix
  ];

  users.users.lichen.packages = with pkgs; [
    kdePackages.kate

    # Nix
    nil
    nixfmt-rfc-style

    # Python
    python3
    python3Packages.python-lsp-server
    ruff

    # Markdown and documentation
    marksman
    markdownlint-cli2
    pandoc

    # Web
    nodejs
    prettier
    yaml-language-server

    # Shell
    shellcheck
    shfmt

    # Optional languages
    clang-tools
    rust-analyzer
    gopls
    lua-language-server
  ];
}
