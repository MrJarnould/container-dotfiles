# Container-specific zsh configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set zsh theme (if using oh-my-zsh)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Preferred aliases
alias ll='ls -la'
alias gs='git status'
alias gp='git pull'

# Any other container-specific configurations
# ...
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Source powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Python venv activation
if [ -f "/workspaces/pyicloud/.venv/bin/activate" ]; then
  source /workspaces/pyicloud/.venv/bin/activate
fi

# Additional settings or aliases can be added here
