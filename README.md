# dotfiles
terminator and vim config files in my ubuntu env. 

需要预先安装的软件有(需高于等于我的版本)：
    
    vim 7.4 , git , curl , cmake , exuberant-ctags , python 2.7.6

首先将项目clone到本地：

    git clone https://github.com/ThanrayTian/dotfiles

然后运行init.sh，具体见一下说明：

[1] vim的配置文件: .vimrc

[2] vim自动补全插件YCM(YouCompleteMe)的配置文件: .ycm_extra_conf.py

[3] 对.ycm_extra_conf.py的配置设置的说明文件: ycm_conf_readme 

[4] terminator的配置文件.config

[5] terminator用于设置显示彩色文件目录的配置文件: .dircolors

[6] terminator彩色目录需要额外在~/.bashrc中添加的内容: .bashrc_add

[7] 将上述文件自动copy到正确的目录下的shell文件: init1.sh & init2.sh , init1.sh先运行，init2.sh在init1.sh运行完打开vim执行:BundleInstall之后运行
