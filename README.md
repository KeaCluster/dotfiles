# Personal dotfiles

<!-- toc -->

- [About](#about)
- [For](#for)
- [How](#how)
  - [Neovim](#neovim)
  - [Minimal theme](#minimal-theme)
- [Screenshots](#screenshots)

<!-- tocstop -->

## About

- Honestly, mostly neovim configuration
- QA non-compliant
- Not recommended
- Mere experiment
- nvim, git, zsh, node, ssh client, c++ tools, brew, etc...

## For

Minimal Debian (or) Arch setup (No GUI config)

## How

```sh
git clone https://github.com/KeaCluster/dotfiles.git ~/.dotfiles
```

You can add execution permition to these scripts with:

```sh
chmod u+x ~/.dotfiles/scripts/init.sh
```

Then `cd` into `scripts` or do it from any directory

```sh
cd ~/.dotfiles/scripts/
```

or just run the files.

```sh
~/.dotfiles/scripts/init.sh
```

This script will install basic programs as well as add some system links

If you already have some configuration and would like to test mine,
you can just update system links to match this repo's files with:

```sh
sys_links.sh
```

- NOTE:

This might make a backup of your previous config if it exists,
but I would recommend making that on your own.

- Verify your installation with the script's instructions.

### Neovim

Config is separate due to version constraints

```sh
nvim_setup.sh
```

### Minimal theme

Its optional to install this theme (I like it leave me be)

```sh
minimal_theme_setup.sh
```

## Screenshots

![terminal](./images/terminal.png)
![dashboard](./images/dashboard.png)
![example](./images/lua-code-ex.png)
