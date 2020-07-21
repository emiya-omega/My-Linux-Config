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
Plug 'skywind3000/asyncrun.vim'
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
"打开vim时自动启动NerdTree,并在打开文件时自动进去右边编辑区                                                                                                                                                                              
 autocmd vimenter * NERDTree
 wincmd w
 autocmd VimEnter * wincmd w
 "vim退出时退出nerdtree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

let g:deoplete#enable_at_startup = 1
set pyxversion=3
set encoding=utf-8
nmap <F9> <Plug>MarkdownPreview
let g:mkdp_path_to_chrome = ""
let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 1
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <C-F8> <Plug>StopMarkdownPreview    " 普通模式
imap <silent> <C-F8> <Plug>StopMarkdownPreview    " 插入模式
map <F5> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "AsyncRun! -mode=term python %"
elseif &filetype == 'html'
            exec "!firefox % &"
elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
elseif &filetype == 'mkd'
            exec "!~/.vim/markdown.pl % > %.html &"
            exec "!firefox %.html &"
endif
    endfunc

