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

You can add execution permition to these scripts with:

```sh
$ chmod u+x ~/.dotfiles/scripts/init.sh
```

Then `cd` into `scripts` or do it from any directory

```sh
$ cd ~/.dotfiles/scripts/
```

or just run the files.

```sh
$ ~/.dotfiles/scripts/init.sh
```

This will install basic programs as well as add some syslinks

If you already have some config, you can just update system links to match this repo's files with:

```sh
$ sys_links.sh
```

- NOTE:

This won't make backups of your previous config.


- Verify your installation with the script's instructions.

### Nvim config is separate due to version constraints.

```sh
$ nvim_setup.sh
```

### Minimal theme

With the use of Zsh and OhMyZsh its optional to install this theme (I like it)

```sh
$ minimal_theme_setup.sh
```
