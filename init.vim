call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-rails'
Plug 'honza/vim-snippets'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'jreybert/vimagit'
call plug#end()

" One dark theme
if (empty($TMUX))
  if (has("nvim"))
   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

let mapleader="\<space>"

" key maping
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~./config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~./config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-h> :%s//<Left><Left>

map <F2> :NERDTreeToggle<cr>

set hidden
set number              " Show the line numbers on the left side.
set relativenumber
set mouse=a
set inccommand=split
set updatetime=100
set shiftwidth=2
set backspace=2
set cursorline
set showmatch           " Show matching brackets.
set expandtab           " Insert spaces when TAB is pressed.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines.
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list " Show problematic characters.
