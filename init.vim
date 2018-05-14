call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'honza/vim-snippets'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
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

let g:deoplete#enable_at_startup = 1

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~./config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~./config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set updatetime=100
set shiftwidth=2
set backspace=2
set cursorline

autocmd vimenter * NERDTree
