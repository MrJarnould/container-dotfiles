#!/bin/bash
# This script installs dotfiles in the container

# Create symbolic links
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh 2>/dev/null || true

# Add any other setup needed for your container environment
echo "Dotfiles installation complete!"