source $HOME/.bash_aliases

eval "$(zoxide init zsh)"

# Display config, uncomment if DISPLAY under WSL isnt set (Electron config)
# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
# export LIBGL_ALWAYS_INDIRECT=1

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=nvim

# Deno
# Uncomment when deno is installed
# . "/home/salem/.deno/env"

# Deno completions
fpath=(~/.dotfiles/zsh $fpath)
autoload -Uz compinit
compinit -u

# Starship
eval "$(starship init zsh)"
