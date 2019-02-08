call plug#begin('~/.vim/plugged')

" misc
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'

" Completion
" Plug 'ervandew/supertab'
Plug 'valloric/youcompleteme'

"tpope
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" colors
Plug 'flazz/vim-colorschemes'
Plug 'reedes/vim-colors-pencil'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'

"Fuzzy Finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"Ack.vim
Plug 'mileszs/ack.vim'

"Elixir
Plug 'elixir-lang/vim-elixir'

"Ruby/Rails Testing
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
" Procore linter
Plug 'ngmy/vim-rubocop'

"File Utils
Plug 'pbrisbin/vim-mkdir'

"Debugging
" Plug 'mcasper/vim-infer-debugger'

"Puppet
Plug 'rodjek/vim-puppet'

"Rust
Plug 'rust-lang/rust.vim'

"Go
Plug 'fatih/vim-go'

"Elm
" Plug 'lambdatoast/elm.vim'
Plug 'ElmCast/elm-vim'

"Swift
Plug 'toyamarinyon/vim-swift'

"Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"Status Bar
Plug 'vim-airline/vim-airline'

" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'



"Searching
Plug 'rking/ag.vim'

"AutoFormat
" Plug 'Chiel92/vim-autoformat'
call plug#end()
