# dotfiles
meowfiles using chezmoi for management

[chezmoi documentation](https://github.com/sensura-san/dotfiles/edit/main/README.md)
- [package manager install](https://www.chezmoi.io/install)

## sync dotfiles + installation on empty machine
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

## update dotfiles
```bash
chezmoi update
```
