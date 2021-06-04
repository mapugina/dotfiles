# # nvm environment must be loaded before this runs or errors occur
# if [ -d "$HOME/.dotfiles" ]; then
#     DOTFILES_BASE="$HOME/.dotfiles"
# elif [ -d "$HOME/dotfiles"]; then
#     DOTFILES_BASE="$HOME/dotfiles"
# else # exit if there is no dotfiles directory
#     echo Could not find dotfiles directory
#     exit 1 
# fi

# source $DOTFILES_BASE/modules/nvm/nvm.shrc

export PATH=$(echo "$PATH" | sed -e 's/:\/mnt[^:]*//g') # Remove bad windows paths
plugins=(git node docker docker-compose ng npx npm vscode)
source $ZSH/oh-my-zsh.sh
