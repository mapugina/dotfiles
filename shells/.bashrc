# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Find DOTFILES directory
if [ -d "$HOME/dotfiles" ]; then
   DOTFILES="$HOME/dotfiles"
elif [ -d "$HOME/.dotfiles" ]; then
   DOTFILES="$HOME/.dotfiles"
else 
    exit # exit if there is no dotfiles directory
fi

# Load base profile
source $DOTFILES/shells/.base_profile

# Load aliases
for f in $DOTFILES/modules/**/*.bashrc $DOTFILES/modules/**/.bashrc $DOTFILES/modules/**/*.aliases $DOTFILES/modules/**/.aliases; do
    [ -f "$f" ] || continue
    source $f;
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
