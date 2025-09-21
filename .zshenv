# .zshenv includes scripts that are needed by scripts (and other environments
# as well, like login and non-login environments)

# NVM needs to be loaded in .zshenv to have access to node in scripts
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm

# Enable rancher in the path
export PATH="$HOME/.rd/bin:$PATH"

# echo ".zshenv loaded"
