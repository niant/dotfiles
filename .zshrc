# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Use zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)    # Include hidden files.

# Enable vim mode
# bindkey -v

# 10ms for key sequences
KEYTIMEOUT=1

# Enable colors for ls for example
export CLICOLOR=1

export EDITOR='vim'

export LC_ALL=en_US.UTF-8

[ -f ~/.dotfiles/.aliases ] && source ~/.dotfiles/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm

source /usr/local/etc/profile.d/z.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ ! -s ~/.travis/travis.sh ] || source ~/.travis/travis.sh
