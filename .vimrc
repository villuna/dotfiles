set nocompatible
filetype off
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set rtp+=~/.vim/bundle/Vundle.vim
set foldmethod=indent
set foldlevel=99
set ruler
set cursorline
nnoremap <space> za

" I dunno what these do anymore but I'll leave them in anyway
set laststatus=2
set t_Co=256
set nu

" Create a column at the 80 character line
" TODO figure out how to set this dynamically idk i hate vimscript
set colorcolumn=80
highlight ColorColumn ctermbg=8 guibg=lightgrey

" Automatically compile latex files on save
autocmd BufWritePost *.tex !pdflatex <afile>
autocmd BufRead *.toml set filetype=toml

" Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'miyakogi/seiya.vim'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}
Plugin 'ollykel/v-vim'

call vundle#end()
filetype plugin indent on

colorscheme everforest
set background=dark

augroup vlang
  au!
  autocmd BufNewFile,BufRead *.v   set filetype=vlang
augroup END

let g:ycm_autoclose_preview_window_after_completion = 1

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Function to open .c and .h files simultaneously
command -nargs=1 Tch call CH(<f-args>)

function CH(name)
    let c = a:name . ".c"
    let h = a:name . ".h"
    execute "tabe " . h
    execute "vsplit " . c
endfunction
