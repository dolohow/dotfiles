""
" Basic setup
""

set nocompatible                  " Use vim, no vi defaults
set number                        " Show line numbers
set ruler                         " Show line and column number
syntax enable                     " Turn on syntax highlighting allowing local overrides
set nohlsearch                    " Disable highlight while searching
set autoread                      " Set to auto read when a file is changed from the outside
set virtualedit=all               " Allow cursor positioning where there is no actual character
set t_Co=256                      " Set number of colors to 256
set shell=bash                    " Some plugins require bash to run properly
set background=dark               " Use dark background color scheme
filetype plugin indent on         " Enable file type based indentation
set mouse=""                      " Disable mouse

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dot

""
"" Searching
""

set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Wild settings
""

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""

set backupdir=~/.vim/_backup//          " where to put backup files.
set directory=~/.vim/_temp//            " where to put swap files.

""
"" Other
""

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" Remember the cursor position after exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""
"" Vimplug
""

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
  let g:go_snippet_engine="neosnippet"
Plug 'ap/vim-css-color'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-grepper'
Plug 'simnalamburt/vim-mundo'                        " Gundo fork
  nnoremap <leader>g :GundoToggle<CR>
Plug 'chrisbra/NrrwRgn'
Plug 'scrooloose/nerdtree'
  map <leader>n :NERDTreeToggle<CR>
Plug 'majutsushi/tagbar'
  map <leader>rt :TagbarToggle<CR>
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'troydm/zoomwintab.vim'
Plug 'bling/vim-airline'
  let g:airline_powerline_fonts=1
Plug 'heavenshell/vim-jsdoc'
Plug 'benekastah/neomake'
  autocmd! BufWritePost * Neomake         " Run neomake on every save
  let g:neomake_cpp_clang_args = ["-std=c++14", "-Wextra", "-Wall"]
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'dag/vim-fish'
Plug 'tpope/vim-haml'
Plug 'mxw/vim-jsx' | Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'moll/vim-node'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/deoplete.nvim'
  let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet'
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/context_filetype.vim'
Plug 'tpope/vim-fugitive'

call plug#end()
