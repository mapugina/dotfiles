# Find DOTFILES directory
if [ -d "$HOME/dotfiles" ]; then
   DOTFILES="$HOME/dotfiles"
elif [ -d "$HOME/.dotfiles" ]; then
   DOTFILES="$HOME/.dotfiles"
else 
    exit # exit if there is no dotfiles directory
fi

emulate sh
source $DOTFILES/shells/.base_profile
emulate zsh

# Load aliases (in shells that support it)
for f in $DOTFILES/modules/**/*.zshrc $DOTFILES/modules/**/.zshrc $DOTFILES/modules/**/*.aliases $DOTFILES/modules/**/.aliases; do
    [ -f "$f" ] || continue
    source $f;
done
