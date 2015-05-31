# !/bin/bash
# please run before change init1.sh 

#---------- about terminator ------------#
mkdir -p $HOME/.config/terminator/
cp .config $HOME/.config/terminator/config
cp .dircolors $HOME/.dircolors
sudo cat .bashrc_add >> $HOME/.bashrc
sudo source $HOME/.bashrc


#-------------- about vim ---------------#
# create dir
mkdir -p $HOME/.vim/bundle

# get vundle
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

#install these before
sudo apt-get install cmake  
sudo apt-get install exuberant-ctags 

# copy .vimrc
cp .vimrc $HOME/.vimrc

