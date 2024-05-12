set emoji
set autochdir
set hidden
set ma
set listchars=tab:>~,nbsp:_,trail:.
set list
set conceallevel=0
set concealcursor=n
set so=6
set nocompatible
set modifiable
set autoread
set cmdheight=1 
set foldenable
set foldmethod=indent
set path+=**
set noswapfile
set autoindent
set ic
set incsearch
set smartcase
set lazyredraw
set noerrorbells
set novisualbell
set t_vb=
set noeb vb t_vb=
syntax on
set number
set shiftwidth=4
set tabstop=4
filetype plugin indent on
set hlsearch
set termbidi
set autowrite
set autowriteall
set laststatus=2
set noshowmode





call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' | 
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif 



