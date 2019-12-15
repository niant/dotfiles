# Install xcode CLI tools
xcode-select --install

# Use old SSH-keys or generate new ones (add your details)
ssh-keygen -t rsa -b 4096 -C "Computer X (mail@example.com)"

# clone dotfiles (GitHub)
git clone --recurse-submodules https://github.com/niant/dotfiles.git ~/.dotfiles
(cd ~/.dotfiles && git remote set-url origin git@github.com:niant/dotfiles.git)

(cd ~/.dotfiles && source setup.sh)