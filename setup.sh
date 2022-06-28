# Configure MacOS
source ~/.dotfiles/macos.sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install software
/opt/homebrew/bin/brew install git z git-extras tmux zsh vim nvm zsh-syntax-highlighting zsh-completions
/opt/homebrew/bin/brew tap homebrew/cask
/opt/homebrew/bin/brew install iterm2 google-chrome homebrew/cask-versions/google-chrome-canary spotify visual-studio-code
/opt/homebrew/bin/brew install romkatv/powerlevel10k/powerlevel10k

# Install Powerline font if required, but powerlevel10k should download
# better one once started
# homebrew/cask-fonts/font-meslo-for-powerline

# Start using dotfiles .zshrc (requires dotfiles)
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Start using .tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Start using .gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Start using .vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# Add directories for Vim
cd ~/.vim/ && mkdir backup swap undo

echo 'Remember to configure'

echo 'Keyboard:'
echo '- Shortcut: move focus into next window cmd+<'
echo '- Touchbar: Expanded Control Strip'
echo '- Modifier Keys: Caps lock -> ESC'

echo 'Energy settings:'
echo '- Display sleep times'

echo 'Disable Screensaver'

echo 'Remember to add your public SSH key to Github'

# Install nvm node to be recognized by OS
# Add path to node bin directory in /etc/paths.d (create file eg. node-path)
