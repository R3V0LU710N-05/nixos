{
  description = "My NixOS configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }: {
    nixosConfigurations = {
      nixos-kde = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./global/configuration.nix
          ./desktops/kde.nix
        ];
      };

      # TODO
      #       nixos-cosmic = nixpkgs.lib.nixosSystem {
      #         system = "x86_64-linux";
      #
      #         modules = [
      #           ./global/configuration.nix
      #           ./desktops/cosmic.nix
      #         ];
      #       };
    };
  };
}
