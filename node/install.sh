echo "Installing NPM packages"


export DOTFILES_BREW_PREFIX_NVM=$(brew --prefix nvm)
set-config "DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_CACHE"

. "$DOTFILES_ROOT/node/.nvm"
nvm install --lts

# Globally install with npm
packages=(
  gtop
  nodemon
  npm
  yarn
  typescript
  eslint
  prettier
)

npm install -g "${packages[@]}"
