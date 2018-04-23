" My PlugIns
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

"Vim Awesome
" Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
" Plugin 'tpope/vim-surround'
" Plugin 'kien/ctrlp.vim'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
" Plugin 'majutsushi/tagbar'
" Plugin 'scrooloose/nerdcommenter'
" " Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'pangloss/vim-javascript'
" Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
" Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-repeat'
Plugin 'vim-latex/vim-latex'
Plugin 'airblade/vim-gitgutter'
Plugin 'https://github.com/adelarsq/vim-matchit'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'sjl/badwolf'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kana/vim-operator-user'
Plugin 'vim-scripts/DoxygenToolkit.vim'
" Plugin 'rhysd/vim-clang-format'
" Plugin 'tell-k/vim-autopep8'
" " NEW PLUGINS
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'

" Plugin 'mileszs/ack.vim'
" Plugin 'jlanzarotta/bufexplorer'
" Plugin 'itchyny/lightline.vim'
" Plugin 'mru.vim'


" Plugin 'terryma/vim-expand-region'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'maxbrunsfeld/vim-yankstack'

"Included Modes

"Plugin 'kchmck/vim-coffee-script'
" Plugin 'groenewege/vim-less'
" Plugin 'sophacles/vim-bundle-mako'
" Plugin 'tpope/vim-markdown'
" Plugin 'vim-scripts/nginx.vim'
" Plugin 'fatih/vim-go'


"Included Color Scheme
" Plugin 'vim-scripts/peaksea'
" Plugin 'altercation/vim-colors-solarized' "Included already.
" Plugin 'wesgibbs/vim-irblack'
" Plugin 'vim-scripts/mayansmoke'
" Plugin 'therubymug/vim-pyte'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Insert number of lines:
" set number

" C code indentation:
set cindent
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2

"Remap C-a to select all:
map <C-a> <esc>ggVG<CR>


"Inser snippets"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Copy and paste to clipboard
set clipboard=unnamedplus



"Tabularize command:
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif


inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction


" Disable arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>


" Set mouse
set mouse=a


" Track changes in Git
set updatetime=250
map <leader>G :GitGutterToggle<cr>

" Multicursor in vim
" Deactivate default
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


" Set ruler
:set colorcolumn=80

" set colorscheme
colorscheme badwolf

" Autoformat
" Set to F3
noremap <F3> :Autoformat<CR>
" Autoformat on save
" au BufWrite * :Autoformat
" let g:autopep8_max_line_length=79
" set textwidth=120


