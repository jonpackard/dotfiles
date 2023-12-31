
### Variables

# Define the PATH variable.
export PATH="${PATH}:${HOME}/scripts:${HOME}/.local/bin"

### Aliases

# Search the NixOS package database.
alias nixsearch="nix --extra-experimental-features \"nix-command flakes\" search nixpkgs" 

# Look up package info in the NixOS package database.
alias nixshow="nix-env -qa --description"

# Start tmux. If there is an existing session, attach to it.
alias tmux="tmux a || tmux" 

# Shortcut for ls using flags long, human readable and hidden.
alias ll="ls -lha"

# Fix for SteamVR not being able to use setcap.
# Source: https://github.com/NixOS/nixpkgs/issues/71554#issuecomment-791969690
alias prepvr="sudo setcap CAP_SYS_NICE+ep ~/.local/share/Steam/steamapps/common/SteamVR/bin/linux64/vrcompositor-launcher"

# Turn VR lighthouses on and off
alias lhon="watch lighthouse --state on"
alias lhoff="watch lighthouse --state off"

# Fix sometimes needed for allowing X Server connections over SSH.
alias xhostinit="xhost +si:localuser:$USER"

# Run nixos-rebuid switch using flake from github repo
alias nrsf="sudo nixos-rebuild switch --flake /home/jonathan/nixos-configs#${hostname}"

### Startup routine

# Only run in an interactive shell that is not nested.
if [ -n "$PS1" ] && [ $SHLVL -lt 2 ]; then
    neofetch
    fortune
fi
