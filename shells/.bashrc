# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load base profile
source $DOTFILES/shells/.base_profile

# load module files
for f in $DOTFILES/modules/**/*.bashrc $DOTFILES/modules/**/.bashrc; do
    [ -f "$f" ] || continue
    source $f;
done

# Load aliases
for f in $DOTFILES/modules/**/*.aliases $DOTFILES/modules/**/.aliases; do
    [ -f "$f" ] || continue
    source $f;
done
