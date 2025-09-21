# .zprofile includes scripts that are included for interactive login
# environments (loaded after .zshenv)

# https://zsh.sourceforge.io/Doc/Release/Functions.html#Autoloading-Functions
# If zsh is installed with Homebrew, make sure functions are loaded
# from the corresponding version as well.
FPATH=$(/opt/homebrew/bin/brew --prefix)/share/zsh-completions:$FPATH

# Make brew paths available in Nix scripts as well, so include them in this file
eval "$(/opt/homebrew/bin/brew shellenv)"
export AWS_SESSION_TOKEN_TTL="32h"

# https://docs.brew.sh/Shell-Completion
# Autoload auto-complete support
# zsh-completions can be installed by other user, so security warnings
# might happen. Ignore them with compinit -u or -C.
autoload -Uz compinit
zstyle ':completion:*' menu select
# compinit -u # -u skips security checks and warnings (completions are installed by another user)
# compinit -C # Uses cached zcompdump file and skips security checks (if it exists)
# compinit -i # Ignores insecure files and directories silently
compinit -i

# echo ".zprofile loaded"
