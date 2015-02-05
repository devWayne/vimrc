set number
set guifont=Courier\ New:h14

set nocompatible              " be iMproved, required
filetype off                  " required

"-------------------------------------
".vimrc NERD_tree
map <F5> :NERDTreeToggle<CR>
"open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowFiles=1
"-------------------------------------
".vimrc jsformat
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"--------------------------------------
".vimrc jsDoc
let g:JSDocSnippetsMapping='<D-C>'
"-------------------------------------
"Solarized Colorscheme
"cd vim-colors-solarized/colors
"mv solarized.vim ~/.vim/colors/
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
"-------------------------------------










" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

"NERD_tree
Plugin 'scrooloose/nerdtree'
"vim-nerdtree-tabs
Plugin 'jistr/vim-nerdtree-tabs'


"jsFormat
Plugin 'tpope/vim-fugitive'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

"less
Plugin 'groenewege/vim-less'

"jsDoc
Plugin 'SirVer/ultisnips'
Plugin 'jordwalke/JSDocSnippets'

"Solarized Colorscheme
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


