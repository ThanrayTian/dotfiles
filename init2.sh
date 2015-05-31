# !/bin/bash
# run this file after exec the command ":BundleInstall" in vim

# copy the ycm_extra_conf.py to the usr direction
cp .ycm_extra_conf.py $HOME/

# install the clang-completer for YCM
cd $HOME/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

echo "your ubuntu working env config successful!"
