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
set mouse=a
set term=xterm-256color



call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'cpiger/NeoDebug'
call plug#end()

colorscheme gruvbox
set background=dark
"thick cursor"
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
"nerdtree shortcuts"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

if has("gui_running")
  set lines=999 columns=999 "open fullscreen"
  if has("gui_gtk3")
    set guifont=Inconsolata\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
"terminal shortcuts"
nnoremap <Leader>t :botright term ++rows=6<CR>
"NeoDebug shortcuts"
let g:neodbg_keymap_toggle_breakpoint  = '<F9>'         " toggle breakpoint on current line
let g:neodbg_keymap_next               = '<F10>'        " next
let g:neodbg_keymap_run_to_cursor      = '<C-F10>'      " run to cursor (tb and c)
let g:neodbg_keymap_jump               = '<C-S-F10>'    " set next statement (tb and jump)
let g:neodbg_keymap_step_into          = '<F11>'        " step into
let g:neodbg_keymap_step_out           = '<S-F11>'      " setp out
let g:neodbg_keymap_continue           = '<F5>'         " run or continue
let g:neodbg_keymap_print_variable     = '<C-P>'        " view variable under the cursor
let g:neodbg_keymap_stop_debugging     = '<S-F5>'       " stop debugging (kill)
let g:neodbg_keymap_toggle_console_win = '<F6>'         " toggle console window
let g:neodbg_keymap_terminate_debugger = '<C-C>'        " terminate debugger
