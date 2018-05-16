call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-rails'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'roxma/nvim-completion-manager'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'jreybert/vimagit'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
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

" ********* key maping **********
" Open files in fuze search
nnoremap <c-p> :Files<cr>
" Find in all files
nnoremap <c-f> :Ag<space>
" Find / Replace all
nnoremap <c-h> :%s///gc<Left><Left><Left><Left>
" Find / Replace chose each
nnoremap <s-h> :%s///g<Left><Left><Left>
" Show git view
nnoremap <c-g> :GV<cr>  

nnoremap <c-Left>  :tabprevious<cr>
nnoremap <c-Right> :tabnext<cr>
nnoremap <c-t> :tabnew<CR>
nnoremap <s-t> <Esc>:tabclose<CR>

map <F2> :NERDTreeToggle<cr>
map <F4> :TagbarToggle<cr>

" ********* set options **********
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
set autoindent
set omnifunc=htmlcomplete#CompleteTags

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines.
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list " Show problematic characters.
