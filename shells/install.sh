# Find DOTFILES directory
if [ -d "$HOME/dotfiles" ]; then
    DOTFILES_BASE="$HOME/dotfiles"
elif [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_BASE="$HOME/.dotfiles"
else 
    exit # exit if there is no dotfiles directory
fi

ln -s $DOTFILES_BASE/shells/.bashrc $HOME/.bashrc
ln -s $DOTFILES_BASE/shells/.zshrc $HOME/.zshrc