#!/bin/bash

# Exit immediately on error
set -e

echo "🔧 Starting developer environment setup..."

# Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ Homebrew already installed."
fi

# Update Homebrew
brew update

# Install packages
echo "📦 Installing packages: git, vim, zsh..."
brew install git vim zsh

# Get Homebrew zsh path
BREW_ZSH_PATH="$(brew --prefix)/bin/zsh"

# Add Homebrew zsh to /etc/shells if not already there
if ! grep -Fxq "$BREW_ZSH_PATH" /etc/shells; then
  echo "➕ Adding $BREW_ZSH_PATH to /etc/shells..."
  echo "$BREW_ZSH_PATH" | sudo tee -a /etc/shells
else
  echo "✅ $BREW_ZSH_PATH already listed in /etc/shells."
fi

# Change the user's default shell to Homebrew zsh
if [ "$SHELL" != "$BREW_ZSH_PATH" ]; then
  echo "🔄 Changing default shell to $BREW_ZSH_PATH..."
  chsh -s "$BREW_ZSH_PATH"
else
  echo "✅ Default shell is already $BREW_ZSH_PATH."
fi

# Symlink dotfiles
echo "🔗 Symlinking dotfiles..."
DOTFILES_DIR=$(pwd)

ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/git/.gitconfig" ~/.gitconfig

echo "✅ All done! Restart your terminal to start using your new setup."
