call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'neomake/neomake'
Plug 'ryanoasis/vim-devicons'
Plug 'iamcco/markdown-preview.vim'
Plug 'morhetz/gruvbox'
Plug 'kevinhwang91/rnvimr'
Plug 'neoclide/coc.nvim'
Plug 'lambdalisue/suda.vim'
Plug 'mg979/vim-xtabline'
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
"nmap <silent> <F2>e :NERDTree <cr>
"打开vim时自动启动NerdTree,并在打开文件时自动进去右边编辑区                               
"tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
"nnoremap <silent> <M-o> :RnvimrToggle<CR>
"tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>
"autocmd vimenter * NERDTree
" wincmd w
" autocmd VimEnter * wincmd w
 "vim退出时退出nerdtree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

set pyxversion=3
set encoding=utf-8
:nmap <space>e :CocCommand explorer<CR>
"当NERDTree为剩下的唯一窗口时自动关闭
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

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }   





" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
let g:rnvimr_draw_border = 0

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Set up only two columns in miller mode and draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"
            \ --cmd="set draw_borders both"'

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Customize the initial layout
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.6 * &columns)),
            \ 'height': float2nr(round(0.6 * &lines)),
            \ 'col': float2nr(round(0.2 * &columns)),
            \ 'row': float2nr(round(0.2 * &lines)),
            \ 'style': 'minimal' }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {},
            \ {'width': 0.700, 'height': 0.700},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]
