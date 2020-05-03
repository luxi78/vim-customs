syntax on
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
"set encoding=prc
set encoding=utf-8

set mouse-=a

set clipboard=unnamed

set ignorecase
set smartcase
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set autoread
set hlsearch

let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" Enable filetype plugin
filetype plugin on

au BufEnter,BufRead *.conf setf dosini

filetype indent on


"nmap <C-\>s :Gtags -s <C-R>=expand("<cword>")<CR><CR>	
"查找定义
nmap <C-\>g :Gtags <C-R>=expand("<cword>")<CR><CR>	
"查找引用
nmap <C-\>r :Gtags -r <C-R>=expand("<cword>")<CR><CR>	
"grep方式查找
nmap <C-\>e :Gtags -g <C-R>=expand("<cword>")<CR><CR>	
let g:Gtags_OpenQuickfixWindow = 2
let g:Gtags_Auto_Update = 1
map <C-n> :lnf<CR>
map <C-p> :lp<CR>
nmap gn :cn<CR>	
nmap gN :cp<CR>	

"Grep 搜索当前文件下面的关键词
"nmap <F3> :Grep <C-R>=expand("<cword>") %<CR><CR>	
nmap <F6> :Grep \<<cword>\> %<CR><CR>

nnoremap <silent><F12> :A<CR>

"LookupFile的设置
if filereadable("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif
"nmap <F6> :LUTags \<<cword>\><CR><CR> 这样为什么不行呢？？？
nnoremap ,lf :LUTags <C-R>=expand("<cword>")<CR><CR>


"用于tagbar的设置
let g:tagbar_left=1
nmap <F8> :TagbarToggle<CR>

"用于eclim的设置
let g:EclimJavaSearchSingleResult='edit'
nmap <F3> :JavaSearch<CR>
let g:EclimCSearchSingleResult='edit'
nmap <F4> :CSearch<CR>


"for gvim
set guifont=ProFontWindows\ 9
color desert 
set guioptions=aegimLt


nmap * *N


call plug#begin('~/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/lookupfile'
Plug 'vim-scripts/genutils'
Plug 'vim-scripts/Visual-Mark'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/gtags.vim'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/a.vim'
Plug 'chr4/nginx.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'leafgarland/typescript-vim'
call plug#end()
