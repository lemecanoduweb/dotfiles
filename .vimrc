" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

" end vim-plug
call plug#end()

let g:deoplete#enable_at_startup = 1

map <C-n> :NERDTreeToggle<CR>

let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

set number
set relativenumber

set clipboard=unnamedplus
