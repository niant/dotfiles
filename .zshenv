# .zshenv includes scripts that are needed by scripts (and other environments
# as well, like login and non-login environments)

# Activate mise globally
eval "$(/opt/homebrew/bin/mise activate zsh)"

# Enable rancher in the path
export PATH="$HOME/.rd/bin:$PATH"

# echo ".zshenv loaded"
