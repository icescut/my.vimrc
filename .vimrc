" 不兼容vi
set nocompatible              
"===================================================
" 设置Vundle
"===================================================
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/mattn/emmet-vim.git'
Plugin 'https://github.com/Lokaltog/vim-powerline.git'
call vundle#end()            

"===================================================
" 基本设置
"===================================================
filetype plugin indent on

" 设置行号
set number
" 设置样式
colorscheme desert
" 设置字体
set guifont=Consolas:h14:cANSI
" 语法高亮
syntax on
set showcmd
" 所有模式都可以使用鼠标
set mouse=a
" 不自动换行
set nowrap
" 超过80字符自动换行
set textwidth=80
" 自动缩进
set autoindent
" 智能对齐
set smartindent
" tab为4个字符
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 用空格替换tab
set expandtab
" 高亮搜索
set hlsearch
set incsearch
" 搜索忽略大小写
set ignorecase
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 设置命令历史
set history=100
" 没有错误提示音
set noeb
" 高亮显示匹配的括号
set showmatch
" 不需要备份
set nobackup

" 自动检测外部更改
set autoread
"浅色显示当前行
autocmd InsertLeave * se nocul
"用浅色高亮当前行
autocmd InsertEnter * se cul

"===================================================
" powerline
"===================================================
set t_Co=256
"  
let g:minBufExplForceSyntaxEnable = 1
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
       autocmd!
       au InsertEnter * set timeoutlen=0
       au InsertLeave * set timeoutlen=1000
   augroup END
endif
                            
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
