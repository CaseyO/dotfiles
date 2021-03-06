" Use vim-plug for plugin management (:Plug[Install|Update])
" https://github.com/junegunn/vim-plug

" Plugins
if filereadable(expand("$HOME/.config/nvim/plugins.vim"))
  source $HOME/.config/nvim/plugins.vim
endif

" Functions
if filereadable(expand("$HOME/.config/nvim/functions.vim"))
  source $HOME/.config/nvim/functions.vim
endif

" Basic Config
syntax on
filetype plugin indent on

set nocompatible
" set relativenumber
set number
set wildmenu
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cursorline
set smarttab
set autoindent
set splitbelow
set splitright
set history=500
set autoread
set laststatus=2
set tags=./tags;
set hlsearch
set ignorecase smartcase
set hidden
set mouse=""
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Color and UI
try
  colorscheme nord
catch
endtry

set colorcolumn=80
set ruler
set synmaxcol=250

set guicursor=a:hor10
au VimLeave * set guicursor=a:hor10
au BufEnter * set guicursor=a:hor10
au BufLeave * set guicursor=a:hor10

" Plugin Settings
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

let g:jsx_ext_required = 0

let test#strategy = "neovim"

let g:ycm_rust_src_path = '/usr/local/src'
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_server_python_interpreter = '/usr/local/bin/python2'
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" Verify These

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3

let g:elm_format_autosave = 1

" Autocmds
augroup vimrcEx
  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType ruby,haml,eruby,yaml,fdoc,html,javascript,sass,cucumber set ai sw=2 sts=2 et
  autocmd FileType go set ai sw=4 sts=4 et nolist

  autocmd BufNewFile,BufRead *.fdoc setfiletype yaml
  autocmd Filetype yaml set nocursorline
  autocmd BufNewFile,BufRead *.sass setfiletype sass
augroup END

autocmd FileType gitcommit setlocal spell textwidth=72

" NERDTree
""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 35
let g:NERDTreeWinPos = "right"
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Jump to the main window.
autocmd VimEnter * wincmd p
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""
" Mappings

let mapleader = "\<Space>"

" ACK & Silversearcher
""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
let g:ackhighlight = 1
let g:ack_qhandler = "botright copen 30"
let g:ack_apply_qmappings = 1
nmap <leader><C-F> :Ack!<space>


map <Leader>w :w!<CR>
map <Leader>Q :q<CR>
map <Leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
map <Leader>f  :FZF<CR>
map <Leader>vi :tabe ~/.config/nvim/init.vim<CR>
map <Leader>vs :source ~/.config/nvim/init.vim<CR>
map <Leader>c  :bp\|bd #<CR>
map <Leader>ws :%s/\s\+$//<CR>
map <Leader>le :%s/\r$//<CR>
map <Leader>hs :s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>
map <Leader>i :call CorrectIndentation()<cr>
map <Leader>n :call RenameFile()<cr>
map <Leader>p :call AddDebugger("o")<cr>
map <Leader>P :call AddDebugger("O")<cr>
map <Leader>d :call RemoveAllDebuggers()<cr>

" vim copy to clipboard Gittler magic
vnoremap <C-c> "*y

" Turn into function
map <Leader>ar :topleft :split config/routes.rb<CR>

nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>r :TestFile<CR>

function! MapCR()
  nnoremap <CR> :nohlsearch<CR>
endfunction
call MapCR()

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
vmap <Enter> <Plug>(EasyAlign)
nmap k gk
nmap j gj
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <Right> :bn<CR>
map <Left> :bp<CR>

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=black ctermfg=yellow
