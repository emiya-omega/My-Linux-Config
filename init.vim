call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'neomake/neomake'
Plug 'iamcco/markdown-preview.vim'
Plug 'morhetz/gruvbox'
call plug#end()
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set number
set cursorline
set cuc
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set showmatch
set listchars=tab:>-,trail:-
set laststatus=2
set ruler
filetype plugin indent on
autocmd BufWritePost $MYVIMRC source $MYVIMRC
colorscheme gruvbox
nmap <silent> <F2>e :NERDTree <cr>
let g:deoplete#enable_at_startup = 1
set pyxversion=3
set encoding=utf-8
g:python3_host_prog = "/usr/bin/python3"
