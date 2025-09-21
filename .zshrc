[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"

emulate zsh -c "$(direnv export zsh)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 10ms for key sequences
#KEYTIMEOUT=1

# Enable colors for ls for example
export CLICOLOR=1
export EDITOR='vim'
export LC_ALL=en_US.UTF-8

# Use emacs keybindings to work within tmux (no visual/insert modes)
# list all bindkeys by bindkey -l
bindkey -e

[ -f ~/.dotfiles/.aliases ] && source ~/.dotfiles/.aliases

source "${HOMEBREW_REPOSITORY}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${HOMEBREW_REPOSITORY}/share/powerlevel10k/powerlevel10k.zsh-theme"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To speed up direnv loading, use emulate
emulate zsh -c "$(direnv hook zsh)"

export PATH="$HOME/.local/bin:$PATH"

setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS   # remove superfluous blanks
setopt SHARE_HISTORY        # share history between sessions
