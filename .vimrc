" else
set nu
syntax on
set nocompatible
set cursorline "highlight current line


" encoding
set encoding=utf-8
set helplang=cn


" filetype
filetype on
filetype plugin on
filetype indent on


" indent and width
set tabstop =4
set softtabstop =4
set expandtab
set shiftwidth =4
set autoindent
set smartindent


" search
set hlsearch 	" highlight searches
set incsearch 	" do incremental searching, search as you type
set ignorecase	" ignore case when searching
set smartcase 	" no ignorecase if Uppercase char present


"#------------------------------------------------------------------#
"########## plugin: vundle ############
"#------------------------------------------------------------------#
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"Bundle the filename in the github
Bundle 'gmarik/vundle'


"#------------------------------------------------------------------#
"########## plugin: nerd-tree ###########
"#------------------------------------------------------------------#
Bundle 'scrooloose/nerdtree.git'
"显示增强
let NERDChristmasTree=0
"显示隐藏文件
let NERDTreeShowHidden=0
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
"显示行号
let NERDTreeShowLineNumbers=1
"窗口位置
let NERDTreeWinPos='left'
""窗口宽度
let NERDTreeWinSize=30
"不显示'Bookmarks' label 'Press ? for help'
let NERDTreeMinimalUI=1
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") 
            \ && b:NERDTreeType == "primary") | q | endif


"#------------------------------------------------------------------#
"########## plugin: solarized ###########
"#------------------------------------------------------------------#
Bundle 'altercation/vim-colors-solarized'
set t_Co=256
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized


"#------------------------------------------------------------------#
"########## plugin: powerline ###########
"#------------------------------------------------------------------#
Bundle 'Lokaltog/vim-powerline'
set laststatus =2   "总是显示状态栏
let g:Powerline_symbols = 'fancy'


"#------------------------------------------------------------------#
"########## plugin: taglist ###########
"#------------------------------------------------------------------#
let Tlist_Ctags_Cmd = '/usr/bin/ctags-exuberant'

Bundle 'taglist.vim'
let Tlist_Compact_Format = 1    "不显示按F1帮助
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth=30   "设置taglist宽度
let Tlist_Show_One_File = 1
let Tlist_Auto_Highlight_tag = 1
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1


"#------------------------------------------------------------------#
"############ plugin: nerdcommmenter ##############
"#------------------------------------------------------------------#
Bundle "scrooloose/nerdcommenter"


"#------------------------------------------------------------------#
"################## plugin: YCM(YouCompleteMe)  #####################
"#------------------------------------------------------------------#
Bundle 'Valloric/YouCompleteMe'
"可以查阅:help ins-completation了解completeopt,pumvisible,<C-y>等内容
"可以到 https://github.com/Valloric/YouCompleteMe 去了解YCM的更多选项
"和命令.
"let g:ycm_semantic_triggers =  {
  "\   'c' : ['->', '.'],
  "\   'cpp,objcpp' : ['->', '.', '::'],
  "\   'php' : ['->', '::'],
  "\   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  "\ }
"YCM仅对[]中的符号触发语言(semantic)补全,普通的非成员的除非在该文件中
"出现过,否则无法触发:如strlen.
"YCM对非常多语言都能做补全，但仅对c系列的语言c,cpp,objc,objcpp 能做语
"法检查，因此应该再安装一个Syntastic做其他语言的语法检查
"### (Vim本身设置)不在窗口上部显示原型的详细信息的preview窗口
set completeopt-=preview

"### 补全设置
"let g:ycm_auto_trigger = 0     "不自动触发补全
let g:ycm_min_num_of_chars_for_completion = 3   "三个字符后开始补全
"let g:ycm_seed_identifiers_with_syntax = 1     "语法关键字补全

"### 配置默认的ycm_extra_conf.py,打开vim时不再询问是否加载
"### ycm_extra_conf.py配置
let g:ycm_global_ycm_extra_conf ='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

"### 使用ctags生成的tags文件
"let g:ycm_collect_identifiers_from_tag_files = 1 

"### diagnostic语法诊断设置
let g:ycm_show_diagnostics_ui = 1   "设为1之后c系的语言由YCM做检查
"可以关闭使Syntastic来做c系语言的检查
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

"### 补全之后自动关闭preview,也可以将preview固定在上方以免跳来跳去
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
"### 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command = 'vertical-split'


"#------------------------------------------------------------------#
"############ Syntastic  ##############
"#------------------------------------------------------------------#
Bundle 'scrooloose/syntastic'
"# 所谓自动实时,其实并不是,需要先write然后才检查错误
"### see :help syntastic in Vim
"#
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>*'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1   "打开文件即检查
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting=1
let g:syntastic_loc_list_height = 5
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black
" Syntastic并不自带checker,以下的是实际用到的checker,需要预先安装好而
" python的checker中pyflakes比默认设置的pylint快
"let g:syntastic_python_checkers=['pyflakes', 'pep8'] 
"let g:syntastic_javascript_checkers = ['jsl', 'jshint']
"let g:syntastic_html_checkers=['tidy', 'jshint']



"#------------------------------------------------------------------#
"############ key-notation  ##############
"#------------------------------------------------------------------#
let mapleader = ','
imap ;; <ESC>
nnoremap <CR> i<CR><ESC>
nnoremap <TAB> i<TAB><ESC>
"nnoremap <C-p> "odd<up>"0p         "将寄存器0中的内容粘贴并替换该行
nnoremap <C-left> <C-w><left>       "转换窗口
nnoremap <C-up> <C-w><up>
nnoremap <C-right> <C-w><right>
nnoremap <C-down> <C-w><down>

"nnoremap <leader>n :NERDTreeToggle<CR>
"nnoremap <leader>t :TlistToggle<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   

"### Syntastic: 按下,s可以触发语法检查
"nnoremap <Leader>s :SyntasticCheck<cr> "然并没有用,active时用:w即可

"### YCM: 自动补全时,回车即选中当前项,right使不用CR第二次
inoremap <expr> <CR> pumvisible() ? "\<C-y>\<right>" : "\<CR>"  

"#----------------------------------------------#
"### F2 打开NERDTree
"#----------------------------------------------#
nnoremap <silent> <F2> :NERDTreeToggle<CR>

"#----------------------------------------------#
"### F3 显示taglist
"#----------------------------------------------#
nnoremap <silent> <F3> :TlistToggle<CR>

"#----------------------------------------------#
"### F4 显示语法检查错误栏
"#----------------------------------------------#
nmap <F4> :YcmDiags<CR>

"#----------------------------------------------#
"### F5 保存并编译产生可执行文件
"#----------------------------------------------#
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunc

"#----------------------------------------------#
"### F6 代码格式优化
"#----------------------------------------------#
"map <F6> :call FormartSrc()<CR><CR>
"
""定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi 
                    \--one-line = keep-statements -a 
                    \--suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
