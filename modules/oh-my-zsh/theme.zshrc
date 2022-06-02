# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Use a more verbose theme if connected by ssh
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  ZSH_THEME="kafeitu"
elif [ "$IN_WSL" = true ]; then
  ZSH_THEME="kafeitu"
else
  ZSH_THEME="robbyrussell" # default to the default
fi
