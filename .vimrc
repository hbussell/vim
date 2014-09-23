execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable

set number

set noswapfile

" high light search
set hls

" set tab width
set tabstop=2
set shiftwidth=2
set expandtab

" load syntax specific configurations
au Filetype python source ~/.vim/syntax/python.vim
au Filetype php source ~/.vim/syntax/php.vim

au BufRead,BufNewFile *.module setfiletype php
au BufRead,BufNewFile *.inc setfiletype php


" diable toolbar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar


" disable nerdtree scrollbar
set guioptions+=LlRrb
set guioptions-=LlRrb

" color schemes available:
" solarized
" codeschool
" kolor

" gui theme
if has('gui_running')
  "set guifont=Inconsolata\ 14
  " set guifont=DroidSansMono\ 11
  " set guifont=Monospace\ 11
  set guifont=Source\ Code\ Pro\ Regular\ 11
  " color scheme
  set background=dark
  colorscheme codeschool
  " colorscheme kolor 
  set lines=52 columns=160
endif


" terminal theme
if !has('gui_running')
  set guifont=DroidSansMono\ 11
  " enable 256 color terminal theme
  set t_Co=256
  "let g:solarized_termcolors = &t_Co
  "let g:solarized_termtrans = 1

  " color scheme
  colorscheme kolor
endif


"enable Ctrl-v to paste from system clipboard"
set clipboard=unnamed
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>


" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-x>     :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-c>'
let g:multi_cursor_prev_key='<C-x>'
let g:multi_cursor_skip_key='<C-z>'
let g:multi_cursor_quit_key='<Esc>'


" nerdtree
map <C-n> :NERDTreeToggle<CR>
" show hidden files
let NERDTreeShowHidden=1
" hide pyc and version control files files
let NERDTreeIgnore = ['\.pyc$','\.git$','\.svn$']

" map ii to escape key when in insert mode
imap ii <Esc>


" powerline setup
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" syntatic setup
call pathogen#infect()

" Ctrl-s to save files. 
map <c-s> <Esc>:w<CR>
inoremap <c-s> <Esc>:w<CR>i

" debugger settings
let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 0

au BufRead,BufNewFile *.install setfiletype php

autocmd FileType python,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

" load local configuration if it exists
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif

map <Leader>n <plug>NERDTreeTabsToggle<CR>
