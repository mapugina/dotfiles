# Find DOTFILES directory
if [ -d "$HOME/dotfiles" ]; then
    DOTFILES_BASE="$HOME/dotfiles"
elif [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_BASE="$HOME/.dotfiles"
else 
    exit # exit if there is no dotfiles directory
fi

# Link bash stuff
ln -s $DOTFILES_BASE/shells/.bashrc $HOME/.bashrc
ln -s $DOTFILES_BASE/shells/.bash_logout $HOME/.bash_logout

# Link zsh stuff
ln -s $DOTFILES_BASE/shells/.zshrc $HOME/.zshrc

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm