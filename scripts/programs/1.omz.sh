#!/bin/zsh

if [ -d "${HOME}/.oh-my-zsh" ]; then
    echo "📦  Oh my zsh is already installed"
    exit 1
fi

echo "📦 Installing Oh My Zsh"
    
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
chsh -s $(which zsh) # Set zsh as the default shell

rm -rf "${HOME}/.oh-my-zsh/custom"
git clone https://github.com/bry54/omz-custom.git "${HOME}/.oh-my-zsh/custom"

cd "${HOME}/.oh-my-zsh/custom/plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions

source ~/.zshrc

omz plugin enable zsh-syntax-highlighting.git
omz plugin enable zsh-autosuggestions
omz plugin enable zsh-completions

omz theme set bira

echo "Please log out and log back in for the change to take effect."
