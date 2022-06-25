set number
set relativenumber
set shiftwidth=2
set softtabstop=2 tabstop=2
set autoindent
set cmdheight=2
set mouse=a
" set guicursor=
set exrc
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set updatetime=50

call plug#begin("~/.config/nvim/plugged")

" Plug 'gruvbox-community/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline' " Airline
Plug 'preservim/nerdtree'      " NerdTree
Plug 'tpope/vim-commentary'    " Comments gcc & gc
Plug 'tpope/vim-surround'      " Surround
Plug 'ap/vim-css-color'        " CSS-Color-Preview
Plug 'tc50cal/vim-terminal'    " Terminal
Plug 'terryma/vim-multiple-cursors'    " Surround
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'puremourning/vimspector'

call plug#end()

nnoremap <C-b> :NERDTreeToggle<CR>

inoremap <C-space>: coc#_select_confirm()

let mapleader = " "
inoremap <leader>ps : lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})<C>

:colorscheme catppuccin

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup THE_PRIMAGEN
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END











