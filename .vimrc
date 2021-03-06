""
" Basic setup
""

set nocompatible                  " Use vim, no vi defaults
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
set hidden                        " Put unsaved buffers into background (no "must save first")
set history=1000

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
set wildmenu  " Enables commandline TAB completion"

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

" vim-latexsuite plugin
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

""
"" Vimplug
""

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'ap/vim-css-color'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'
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
Plug 'heavenshell/vim-jsdoc'
Plug 'digitaltoad/vim-jade'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'dag/vim-fish'
Plug 'moll/vim-node'
Plug 'VisIncr'
Plug 'qpkorr/vim-bufkill'
Plug 'derekwyatt/vim-fswitch'
Plug 'derekwyatt/vim-protodef'
Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips' | Plug 'Valloric/YouCompleteMe'
  let g:UltiSnipsExpandTrigger='<c-\>'
  let g:UltiSnipsJumpForwardTrigger='<c-n>'
  let g:UltiSnipsJumpBackwardTrigger='<c-p>'
Plug 'noahfrederick/vim-hemisu'
Plug 'rking/ag.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'scrooloose/syntastic'
Plug 'xoria256.vim'

call plug#end()

colorscheme hemisu
