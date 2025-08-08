# !/bin/env bash

# Install Brew as non root
mkdir .homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C .homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

#install dependencies
brew install tmux xclip asdf git neovim fzf

#Download dotfiles
git clone https://github.com/mrchucu1/dotfiles.git $HOME/.dotfiles

# Download asdf
curl -OL https://github.com/asdf-vm/asdf/releases/download/v0.18.0/asdf-v0.18.0-darwin-arm64.tar.gz
tar -xf ./asdf-v0.18.0-darwin-arm64.tar.gz -C /usr/bin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

# Install zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.dotfiles/ohmyzsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/ohmyzsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.dotfiles/ohmyzsh/plugins/zsh-autosuggestions
ln -s $HOME/.dotfiles/ohmyzsh $HOME/.oh-my-zsh
ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc

#install tmux
git clone https://github.com/gpakosz/.tmux.git $HOME/.dotfiles/.tmux
ln -s $HOME/.dotfiles/.tmux $HOME/.tmux
ln -s -f $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
ln -s -f $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf.local

#install vim
mkdir -p $HOME/.config/nvim
ln -s $HOME/.dotfiles/vimrc-config $HOME/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cd $HOME && asdf install nodejs lts && asdf set nodejs lts

echo "$(homebrew/bin/brew shellenv)" >> $HOME/.zshrc

##That's all falks
echo "Thanks for using mrchucu1's dotfiles auto instalation tool for Mac M series. Non root permissions"