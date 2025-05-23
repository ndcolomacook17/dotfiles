# Dotfiles

Repo for personal dotfiles configuration.

## Structure

- `zsh/.zshrc` - Zsh configuration
- `git/.gitconfig` - Git configuration
- `vim/.vimrc` - Vim configuration

## Setup

To use these dotfiles, you can create symbolic links to your home directory:

```bash
# Zsh
ln -s ~/path/to/dotfiles/zsh/.zshrc ~/.zshrc

# Git
ln -s ~/path/to/dotfiles/git/.gitconfig ~/.gitconfig

# Vim
ln -s ~/path/to/dotfiles/vim/.vimrc ~/.vimrc
```

## Features

### Zsh Configuration
- Custom aliases for Ruby development
- Git shortcuts
- ASDF version manager integration
- Direnv integration

### Git Configuration
- User email configuration
- Basic git settings

### Vim Configuration
- Line numbers
- Syntax highlighting
- Indentation settings
- Search settings
- UTF-8 encoding
- Mouse support
