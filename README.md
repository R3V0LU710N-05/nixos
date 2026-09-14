# NixOS Config


```bash

sudo nixos-rebuild switch --flake .#nixos-kde

```

```text
.
├── applications/
│   ├── editors/
│   │   └── kate.nix
│   ├── gaming/
│   │   └── gaming.nix
│   └── vcs/ (version controll system)
│       └── git.nix
│
├── desktops/ (desktop configuration)
│   └── kde.nix
│
├── global/
│   └── configuration.nix (base configuration)
│
├── hardware/
│   └── hardware-configuration.nix (hardware specific)
│
├── flake.nix (initalizer)
├── flake.lock
├── LICENSE
└── README.md
```
