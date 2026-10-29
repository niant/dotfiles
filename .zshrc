[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"

emulate zsh -c "$(direnv export zsh)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Disabled for now (testing starship)
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

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
# source "${HOMEBREW_REPOSITORY}/share/powerlevel10k/powerlevel10k.zsh-theme"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To speed up direnv loading, use emulate
emulate zsh -c "$(direnv hook zsh)"

export PATH="$HOME/.local/bin:$PATH"

# Command history settings
setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS   # remove superfluous blanks
setopt SHARE_HISTORY        # share history between sessions
setopt INC_APPEND_HISTORY   # add commands to history immediately
setopt EXTENDED_HISTORY     # save timestamp of command in history file
setopt extendedglob
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTORY_IGNORE="(ls|cd|cd ..|pwd|exit|clear)"

# Enable zoxide
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# To enable git-quick-stats dependent coreutils to work with PATH
# https://github.com/git-quick-stats/git-quick-stats
export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"

# ============================================
# VS Code Shell Integration for Copilot
# Fix for terminal completion detection issue
# https://github.com/orgs/community/discussions/161238
# ============================================

# VS Code shell integration - must be at the end of .zshrc
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    # Load VS Code shell integration if available
    # Output the executable's path first:
    # code --locate-shell-integration-path zsh
    [[ -f "/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-rc.zsh" ]] && source "/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-rc.zsh"

    # Disable RPROMPT in VS Code (causes detection issues)
    unset RPROMPT

    # Ensure simple prompt format for command detection
    # This helps Copilot detect when commands finish
#    typeset -g POWERLEVEL9K_DISABLE_RPROMPT=true

    # Increase command timeout for longer operations
    export VSCODE_SHELL_INTEGRATION_TIMEOUT=30000
    export HISTFILE=/dev/null
else
    #eval "$(starship init zsh)"
fi

eval "$(starship init zsh)"

# Machine-specific config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Try it here 18.9.2026
eval "$(/opt/homebrew/bin/mise activate zsh)"
