# Personal dotfiles

## About

- QA non-compliant
- Not recommended
- Mere experiment
- nvim, git, zsh, node, ssh, c++ tools, etc

## For

Minimal Debian setup (No GUI)

## How

```sh
$ git clone https://github.com/KeaCluster/dotfiles.git ~/.dotfiles
```

Then
```sh
$ ~/.dotfiles/scripts/init.sh
```

This will install basic programs as well as add some syslinks

If you already have some distros, you can just update system links to match this repo's files with:

```sh
$ sh ~/.dotfiles/scripts/sys_links.sh
```

Verify your installation with the script's instructions.

### Nvim config is separate due to version constraints.

```sh
$ sh ~/.dotfiles/scripts/nvim_setup.sh
```

### Minimal theme

With the use of Zsh and OhMyZsh it's optional to install this theme I'm a big fan of.

```sh
$ sh ~/.dotfiles/scripts/minimal_theme_setup.sh
```
