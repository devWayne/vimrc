set number
set guifont=Courier\ New:h14

set nocompatible              " be iMproved, required



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
" for less
autocmd FileType less noremap <buffer> <c-f> :call CSSBeautify()<cr>
"--------------------------------------
".vimrc jsDoc
let g:JSDocSnippetsMapping='<D-C>'
"--------------------------------------
".vimrc less
filetype on
au BufNewFile,BufRead *.less set filetype=less


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

"less
Plugin 'groenewege/vim-less'

"jsDoc
Plugin 'SirVer/ultisnips'
Plugin 'jordwalke/JSDocSnippets'

"jsbeautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" monokai
syntax enable
colorscheme monokai

