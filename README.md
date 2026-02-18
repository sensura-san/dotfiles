# Nix Configuration (for macOS)

## Project Structure
```
.
└── darwin
    ├── modules/            # system modules
    │   └── homebrew.nix    # homebrew downloads (for unpackaged apps)
    ├── home/               # user-level configs
    │   ├── config/         # dotfiles
    │   └── ann.nix         # user config + config/ bundle
    ├── nix.nix             # nix settings
    ├── configuration.nix   # system-level configs
    └── flake.nix           # setup + entrypoint
```

## TODO
- [ ] transfer configs from ubuntu WSL

## FIX
- [ ] Decouple ann.nix from per-package configs as much as possible (couple via imports)
- [ ] ^ unslop-ify ann.nix
- [ ] un-hardcode usernames/hostnames using var.nix
