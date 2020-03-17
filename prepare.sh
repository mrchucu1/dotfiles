# !/bin/bash

#install dependencies
sudo apt install -y --force-yes tmux zsh lastpass-cli xclip

#Download dotfiles
git clone https://github.com/mrchucu1/dotfiles.git --recurse-submodules $HOME/.dotfiles

# Install zsh
ln -s $HOME/.dotfiles/ohmyzsh $HOME/.oh-my-zsh
ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc

#install tmux
ln -s $HOME/.dotfiles/.tmux $HOME/.tmux
ln -s -f $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
ln -s -f $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf.local

#install vim
ln -s $HOME/.dotfiles/vimrc $HOME/.vim_runtime
ln -s $HOME/.dotfiles/vimrc-config $HOME/.vimrc

#change shell
chsh $(which zsh)

##That's all falks
echo "Thanks for using mrchucu1's dotfiles auto instalation tool."
