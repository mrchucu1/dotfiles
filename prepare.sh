# !/bin/bash

#install dependencies
sudo yum install tmux zsh lastpass-cli xclip git neovim

#Download dotfiles
git clone https://github.com/mrchucu1/dotfiles.git $HOME/.dotfiles

# Download asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

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
#git clone https://github.com/amix/vimrc $HOME/.dotfiles/vimrc
#ln -s $HOME/.dotfiles/vimrc $HOME/.vim_runtime
ln -s $HOME/.dotfiles/vimrc-config $HOME/.config/nvim/init.vim

#change shell
chsh $USER --shell=$(which zsh)

##That's all falks
echo "Thanks for using mrchucu1's dotfiles auto instalation tool."
