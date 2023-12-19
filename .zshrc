# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable vim mode
# bindkey -e

# 10ms for key sequences
#KEYTIMEOUT=1

# Enable colors for ls for example
export CLICOLOR=1

export EDITOR='vim'

export LC_ALL=en_US.UTF-8

export HOMEBREW_LOCATION="/usr/local"

[ -f ~/.dotfiles/.aliases ] && source ~/.dotfiles/.aliases

source "${HOMEBREW_LOCATION}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

source "${HOMEBREW_LOCATION}/share/powerlevel10k/powerlevel10k.zsh-theme"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "${HOMEBREW_LOCATION}/opt/nvm/nvm.sh" ] && . "${HOMEBREW_LOCATION}/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Git autocomplete etc
autoload -Uz compinit
compinit

# Load scripts
[ -s "~/.dotfiles/listening.sh" ] && . "~/.dotfiles/listening.sh"
