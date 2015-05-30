# !/bin/bash
# please run before change init1.sh 

#---------- about terminator ------------#
mkdir -p $HOME/.config/terminator/
cp .config $HOME/.config/terminator/
cp .dircolors $HOME/.dircolors
cat .bashrc_add >> $HOME/.bashrc
source $HOME/.bashrc


#-------------- about vim ---------------#
# create dir
mkdir -p $HOME/.vim/bundle

# get vundle
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

# copy .vimrc
cp .vimrc $HOME/.vimrc

