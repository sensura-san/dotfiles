# Nix Configuration (for macOS)

## Project Structure

```
.
└── flake.nix               # setup + entrypoint
└── vars.nix                # host variables
└── darwin                  # ----- Darwin-only Configs -----
    ├── modules/            # system-level modules
    │   └── homebrew.nix    # homebrew packages (for unpackaged apps)
    ├── home/               # user-level related files
    │   ├── modules/        # user-level modules
    │   ├── config/         # dotfiles
    │   └── ann.nix         # user-level configs & packages
    ├── nix.nix             # nix settings
    └── configuration.nix   # system-level configs & packages
```

## Machine Setup (macOS)

Clone repository:

```sh
git clone https://github.com/sensura-san/dotfiles
```

Install XCode CLI tools:

```sh
xcode-select --install
```

Install Lix:

```sh
curl -sSf -L https://install.lix.systems/lix | sh -s -- install
```

## Build and switch to configuration

> [!NOTE]
> nh will be included after build, and `nix-shell` will not be needed again.

Run nh in nix-shell, then build:

```sh
nix-shell -p nh git
```

```sh
nh darwin switch [path/to/config] [--hostname hostname]
```

OR:

```sh
sudo nix run nix-darwin/master#darwin-rebuild -- switch
```

## Nix Housekeeping

Delete unlinked packages:

```sh
sudo nix-collect-garbage
```

List generations:

```sh
sudo darwin-rebuild --list-generations
```

or

```sh
nix profile history --profile /nix/var/nix/profiles/system
```

[Dangerous] Delete old generations:

```sh
sudo nix-collect-garbage -d
```

or

```sh
sudo nix profile wipe-history --profile /nix/var/nix/profiles/system --older-than 14d
```

## TODO

- [x] fix services not uninstalling from previous generation (e.g. aerospace, skhd)
- [x] window manager
- [ ] familiar keybindings custom native keybindings (e.g. command palette)
- [ ] rice menu bar
- [ ] rice hyfetch (i.e. layout, perhaps done in fastfetch.nix?)
- [ ] nvim config inspired by omarchy
- [ ] powerline
- [ ] zsh scripting set-up (or some other shell?)
- [x] zsh aliases
- [x] transfer configs from ubuntu WSL
- [x] rebind keyboard via nix-darwin
- [x] auto-formatting
- [x] set-up meow-sp

## FIX

- [x] Decouple ann.nix from per-package configs as much as possible (couple via imports)
- [x] ^ unslop-ify ann.nix
- [x] move flake.nix to project root (as modularised entrypoint; steal vi's)
- [x] un-hardcode usernames/hostnames using vars.nix
- [ ] vscode custom UI not preserved on restart

## EXTRA

- [ ] funny image banner lolz
- [ ] distinction between system-agnostic and system specific configs in project root? where folders like `darwin` would consist of system-specific configs, with further distinction for user-specific configs (a bit excessive tho)
