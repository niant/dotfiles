# Configure MacOS
source ~/.dotfiles/macos.sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install software
brew install git z git-extras tmux zsh vim nvm zsh-syntax-highlighting zsh-completions
brew tap caskroom/cask
brew cask install iterm2 google-chrome homebrew/cask-versions/google-chrome-canary sublime-text spotify

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

# Configure Sublime Text (insert your path)
git clone https://github.com/niant/sublime-settings.git ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
(cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User && git remote set-url origin git@github.com:niant/sublime-settings.git)

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
