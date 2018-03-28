set nocompatible
filetype off
syntax on
colorscheme nemo-dark
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

let g:seiya_auto_enable=1

set rtp+=~/.vim/bundle/Vundle.vim
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" IPA Mappings
" Consonants
autocmd FileType tex,json inoremap ;r ɹ
autocmd FileType tex,json inoremap ;ng ŋ
autocmd FileType tex,json inoremap ;th θ
autocmd FileType tex,json inoremap ;Th ð
autocmd FileType tex,json inoremap ;sh ʃ
autocmd FileType tex,json inoremap ;zsh ʒ
autocmd FileType tex,json inoremap ;glot ʔ
autocmd FileType tex,json inoremap ;ur ɹ̥
autocmd FileType tex,json inoremap ;ul l̥

" Vowels
autocmd Filetype tex,json inoremap ;ae æ
autocmd Filetype tex,json inoremap ;schwa ə
autocmd Filetype tex,json inoremap ;u ʊ
autocmd Filetype tex,json inoremap ;I ɪ
autocmd Filetype tex,json inoremap ;e ɛ

autocmd Filetype python inoremap ;ifmain <esc>idef<space>main():<return>pass<return><return>if<space>__name__<space>==<space>"__main__":<return>main()<return>

set rtp+=/home/liam/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'miyakogi/seiya.vim'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on

set nu
