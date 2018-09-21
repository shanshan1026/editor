"basic setting
set autoindent
syntax enable
filetype plugin indent on
set nu
set hlsearch
" set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set foldenable
"set tags=/cygdrive/c/cloverrel/cloverleaf/tags
"set autochdir
"autocmd FileType c,cpp setl fdm=syntax 

"layout setting
colorscheme desert
let g:winManagerWindowLayout='FileExplorer,BufExplorer|TagList'
set listchars=tab:->,trail:-
set laststatus=2
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

"compiler setting
:set makeprg=make\ %:r.o 
"cs add cscope.out

" main key bindings
" set map leader
" let mapleader = ","
" avoid Esc
:imap ;e <Esc>
" exchange ; and :
noremap ; :
noremap : ;
" fast load winmanager
noremap <silent> <leader>w :WManager<cr>
" fast reloading of the .vimrc
noremap <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
noremap <silent> <leader>ee :e ~/.vimrc<cr>
"Fast bundle install
noremap <silent> <leader>bi :BundleInstall<cr>
"When .vimrc is edited, reload it
"autocmd! bufwritepost .vimrc source ~/.vimrc

noremap td :tabnew<cr>
noremap tn :tabnext<cr>
noremap tp :tabpre<cr>

map <silent> <A-Left> <C-W><Left>
map <silent> <A-Right> <C-W><Right>
map <silent> <A-Up> <C-W><Up>
map <silent> <A-Down> <C-W><Down>

noremap <C-Left> :bp<cr>
noremap <C-Right> :bn<cr>

" ctags list update
map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
map <Leader>cc :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
" selinux ctags
map <Leader>xx :call SelinuxCtags()<CR>

" lookupfile setting
if filereadable("./filenametags") 
let g:LookupFile_TagExpr = string('./filenametags')
endif
let g:LookupFile_MinPatLength = 2    "at least 2 chars to lookup
let g:LookupFile_PreservePatternHistory = 1    "save lookup history
let g:LookupFile_AlwaysAcceptFirst = 1         "\r opens the first match
let g:LookupFile_AllowNewFiles = 0             "not allow create unexisted files
nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>ll :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>

let g:syntastic_c_checkers=['']
let g:syntastic_cpp_checkers=['']

" set vim bundless:
set nocompatible               " be iMproved
filetype off                   " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'bling/vim-airline'
Bundle 'Stormherz/tablify.git'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-expand-region'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'vim-selinux'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'winmanager'
Bundle 'taglist.vim'
Bundle 'minibufexpl.vim'
Bundle 'bufexplorer.zip'
Bundle 'grep.vim'
Bundle 'c.vim'
Bundle 'OmniCppComplete'
Bundle 'genutils'
Bundle 'lookupfile'
" Bundle 'cvsmenu.vim'
Bundle 'a.vim'
Bundle 'vcscommand.vim'
Bundle 'quicksession.vim'
Bundle 'xml.vim'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help  --
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" set vim bundles end
"
