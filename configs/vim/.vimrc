syntax on
set nocompatible
set number
set showmatch
set hls
set incsearch
set shiftwidth=4
set ts=4
set ruler
set mousehide
set mouse=v
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set visualbell
set showmode
set title
set showcmd
set expandtab
set cursorline
set t_Co=256
colorscheme gruvbox
set laststatus=2
set foldenable
set foldmethod=marker
filetype plugin on
set omnifunc=syntaxcomplete#Complete


filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" My Bundles here:
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/ZoomWin'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/RelOps'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
filetype plugin indent on     " required!
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

let g:airline_theme='badwolf'
let g:syntastic_python_checkers=['pyflakes']
nmap <F2> <Plug>RelopsEnablernu
map <C-n> :NERDTreeToggle<CR>
