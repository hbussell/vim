execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable


" color scheme
set background=dark
colorscheme solarized


" diable toolbar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

" disable nerdtree scrollbar
set guioptions+=LlRrb
set guioptions-=LlRrb

if has('gui_running')
  "set guifont=Inconsolata\ 14
  set guifont=DroidSansMono\ 12
endif


"enable Ctrl-v to paste from system clipboard"
set clipboard=unnamed
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>


" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


" nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


" powerline setup
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
