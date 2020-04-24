call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
set paste
set listchars=tab:>-,trail:-
set laststatus=2
set ruler
filetype plugin indent on
autocmd BufWritePost $MYVIMRC source $MYVIMRC
colorscheme gruvbox
nmap <silent> <F2>e :NERDTree <cr>
