call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
" Plug 'uplus/deoplete-solargraph'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-rails'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'jreybert/vimagit'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'ervandew/supertab'
Plug 'MattesGroeger/vim-bookmarks'
call plug#end()

" ********** themes **********
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

" Global variables
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" ********** Deoplete auto complete engine **********
" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ********** key maping **********
let mapleader="\<space>"
" Open files in fuze search
nnoremap <c-p> :Files<cr>
" Find in all files
nnoremap <c-f> :Ag<space>
" Find / Replace all
nnoremap <c-h> :%s///gc<Left><Left><Left><Left>
" Find / Replace chose each
nnoremap <s-h> :%s///g<Left><Left><Left>

nnoremap <c-Left>  :tabprevious<cr>
nnoremap <c-Right> :tabnext<cr>
nnoremap <c-t> :tabnew<CR>
nnoremap <s-t> <Esc>:tabclose<CR>

" Show/hide nerdtree
map <F2> :NERDTreeToggle<cr>
" show/hide method navigation bar
map <F3> :TagbarToggle<cr>
" Show git view
map <F5> :GV<cr>  

" ********* set options **********
set hidden
set number              " Show the line numbers on the left side.
set relativenumber
set mouse=a
set inccommand=split
set updatetime=100
set shiftwidth=2
set backspace=2
set softtabstop=2
set cursorcolumn        " Highlight current column
set cursorline          " Highligh line at the cursor
set showmatch           " Show matching brackets.
set expandtab           " Insert spaces when TAB is pressed.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set autoindent
set omnifunc=htmlcomplete#CompleteTags

" Tell Vim which characters to show for expanded TABs, trailing whitespace, and end-of-lines.
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list " Show problematic characters.
