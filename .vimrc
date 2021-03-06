set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
 
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe'	

" Golang Support?
" Plugin 'fatih/vim-go'
" Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

" TypeScript Support?
Plugin 'leafgarland/typescript-vim'

" Vue support
Plugin 'posva/vim-vue'

" Asynchronous Lint Engine - Keep the standard - required by StandardJS
" Plugin 'w0rp/ale'

" Solarized
" Plugin 'altercation/vim-colors-solarized'

" color scheme gruvbox
" Plugin 'morhetz/gruvbox'

" vim statusline
Plugin 'vim-airline/vim-airline'

" vim-airline themes
Plugin 'vim-airline/vim-airline-themes'

" vim-javascript
Plugin 'pangloss/vim-javascript'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
" Plugin 'google/vim-maktaba'
" Plugin 'google/vim-codefmt'

" color scheme
Plugin 'google/vim-colorscheme-primary'

" search index
Plugin 'google/vim-searchindex'

" dracula color scheme
Plugin 'dracula/vim'

" vim-prettier
" Plugin 'prettier/vim-prettier'

" vim-syntastic
" Plugin 'vim-syntastic/syntastic'

" React plugins
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on

" try
"     colorscheme desert
" catch
" endtry

" syntax enable
" set background=dark
" colorscheme solarized
" colorscheme gruvbox
set t_Co=256
" set background=dark
" set background=light
" colorscheme primary
color dracula
let g:airline_theme='luna'

set number
set cursorline
set ruler
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2 
set autoindent
set copyindent
set smarttab
set expandtab

" copy to clipboard
set clipboard=unnamed

" backup off
set nobackup
set nowb
set noswapfile

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


" let g:ale_linters = {
" \   'javascript': ['standard'],
" \}
" let g:ale_fixers = {'javascript': ['standard']}
" 
" let g:ale_lint_on_save = 1
" let g:ale_fix_on_save = 1

set splitbelow " i need this for :term

" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Vim slows down when using this plugin How can I fix that?
let g:vue_disable_pre_processors=1

" Highlight search results
set hlsearch

" No annoying sound on errors
set noerrorbells

" airline extensions - top bar
let g:airline#extensions#tabline#enabled = 1

" vim highlighting
au BufRead,BufNewFile *.vue set ft=html

" highlight keywords
" syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
" hi def link myTodo Todo

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" vim-prettier
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
" let g:prettier#exec_cmd_async = 1

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" React stuffs?
let g:jsx_pragma_required = 1

