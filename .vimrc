"基本设置
set shortmess=atI "启动是不显示vim自带提示 
set nocompatible "去掉vi的一致性，避免bug 
set tabstop=4 "tab设置为4个字符串长度 
set shiftwidth=4 "tab设置为4个字符串长度 
set softtabstop=4 "统一缩进为4 
set smarttab "行开始使用tab 
set number "显示行号 
set cul "高亮光标所在的行 
set ruler           " 显示标尺 
set showcmd         " 输入的命令显示出来，看的清楚些   
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离   
set statusline=%F%m%r%h%w\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容   
set autowrite "自动保存       
set report=0 
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读 
set showmatch " 高亮显示匹配的括号 
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒） 
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离 
set noswapfile "禁止生成临时文件 
syntax enable "使能高亮
syntax on "开启高亮
autocmd vimenter * if !argc() | NERDTree | endif "自动打开NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "关闭最后一个文件时退出vim
" 优先使用中文help文档
if version >= 603
	set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>"跳转到声明
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>"跳转到定义
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>"跳转到定义，如果没有跳转到声明
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin(‘~/some/path/here‘)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'       "配置全局路径
Plugin 'scrooloose/nerdtree'
map <F12> :NERDTreeToggle<CR>
" Th followmng are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on




