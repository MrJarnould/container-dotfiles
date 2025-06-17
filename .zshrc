# Container-specific zsh configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Smart theme switching for Cursor AI compatibility
if [[ "$PAGER" == "head -n 10000 | cat" ]]; then
  ZSH_THEME="robbyrussell"  # Simple theme when Cursor AI is active
else
  ZSH_THEME="powerlevel10k/powerlevel10k"  # Beautiful theme for interactive use
fi

# Plugins
plugins=(
  git
  virtualenv  # Added for automatic venv activation
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# oh-my-zsh virtualenv plugin settings
VIRTUAL_ENV_DISABLE_PROMPT=0  # Set to 0 to keep the default virtualenv prompt modifications
VIRTUALENV_AUTO_CD=1  # Automatically activate when changing directories

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Source powerlevel10k configuration (only when using p10k theme)
if [[ "$PAGER" != "head -n 10000 | cat" ]]; then
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

# Preferred aliases
alias ll='ls -la'

# Additional settings or aliases can be added here
