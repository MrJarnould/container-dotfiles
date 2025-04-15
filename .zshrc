# Container-specific zsh configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  virtualenv  # Added for automatic venv activation
)

# oh-my-zsh virtualenv plugin settings
VIRTUAL_ENV_DISABLE_PROMPT=0  # Set to 0 to keep the default virtualenv prompt modifications
VIRTUALENV_AUTO_CD=1  # Automatically activate when changing directories

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Source powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Preferred aliases
alias ll='ls -la'

# Additional settings or aliases can be added here
