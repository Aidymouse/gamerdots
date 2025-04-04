typeset -U path cdpath fpath manpath
for profile in ${(z)NIX_PROFILES}; do
  fpath+=($profile/share/zsh/site-functions $profile/share/zsh/$ZSH_VERSION/functions $profile/share/zsh/vendor-completions)
done

HELPDIR="/nix/store/4s5j74mqdljf0m753lsfkd1jp236zrf7-zsh-5.9/share/zsh/$ZSH_VERSION/help"

# oh-my-zsh extra settings for plugins

# oh-my-zsh configuration generated by NixOS


ZSH_THEME="robbyrussel"
source $ZSH/oh-my-zsh.sh

# History options should be set in .zshrc and after oh-my-zsh sourcing.
# See https://github.com/nix-community/home-manager/issues/177.
HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
unsetopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
unsetopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY


if [[ $TERM != "dumb" ]]; then
  eval "$(/home/aidan/.nix-profile/bin/starship init zsh)"
fi

alias -- lg=lazygit