if test ! $(which brew); then
  echo "Installing Homebrew."

  if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
    echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
    return
  fi

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

echo "Installing apps via Homebrew"
brew bundle || echo "Reinstalling those packages afterward."