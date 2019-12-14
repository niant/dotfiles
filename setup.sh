# Install xcode CLI tools
xcode-select --install

# Use old SSH-keys or generate new ones (add your details)
ssh-keygen -t rsa -b 4096 -C "Computer X (mail@example.com)"

echo 'Remember to add your public SSH key to Github'

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install software
brew install git z git-extras tmux zsh vim nvm zsh-syntax-highlighting
brew tap caskroom/cask
brew cask install iterm2 google-chrome homebrew/cask-versions/google-chrome-canary sublime-text spotify

# Install Powerline font if required, but powerlevel10k should download
# better one once started
# homebrew/cask-fonts/font-meslo-for-powerline

# clone dotfiles (GitHub) (requires SSH keys)
git clone —recursive git@github.com:niant/dotfiles.git ~/.dotfiles

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

# Configure MacOS
source macos.sh

# Configure Sublime Text (insert your path)
git clone git@github.com:niant/sublime-settings.git ~/Library/Application Support/Sublime Text 3/Packages/User

echo 'Remember to configure'

echo 'Keyboard:'
echo '- Shortcut: move focus into next window cmd+<'
echo '- Touchbar: Expanded Control Strip'
echo '- Modifier Keys: Caps lock -> ESC'

echo 'Energy settings:'
echo '- Display sleep times'

echo 'Disable Screensaver'

# Install nvm node to be recognized by OS
# Add path to node bin directory in /etc/paths.d (create file eg. node-path)
