#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew upgrade

brew cask install iterm2
brew cask install visual-studio-code

while read p; do
  brew install $p 
done < .brew

#setup theme for zsh
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

#move files to home path
cp .vimrc .zshrc .alias ~/
