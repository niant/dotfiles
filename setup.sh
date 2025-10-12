# Configure MacOS
source ~/.dotfiles/macos.sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

# Install software
/opt/homebrew/bin/brew bundle install

# Start using dotfiles .zshrc (requires dotfiles)
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.zprofile ~/.zprofile

# Start using .tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# Start using .gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config/git ~/.config/git
cp ~/.dotfiles/.config/git/example.gitconfig_local ~/.config/git/.gitconfig_local

# Start using .vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# Add directories for Vim
cd ~/.vim/ && mkdir backup swap undo

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo 'Remember to configure'

echo 'Keyboard:'
echo '- Shortcut: move focus into next window cmd+<'
echo '- Modifier Keys: Caps lock -> ESC'

echo 'Energy settings:'
echo '- Display sleep times'

echo 'Nix home-manager'

echo 'Disable Screensaver'

echo 'Remember to add your public SSH key to Github'

