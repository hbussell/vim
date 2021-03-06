# Vim configuration

Minimal vim configuration using the bare requirements.

## Plugins used

* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [powerline](https://github.com/Lokaltog/powerline)
* [syntactic](https://github.com/scrooloose/syntastic)
* [DBGPavim](https://github.com/brookhong/DBGPavim)
* [supertab](https://github.com/ervandew/supertab/tree/master/plugin)
* [SearchComplete](http://www.vim.org/scripts/script.php?script_id=474)
* [easy-motion](http://www.vim.org/scripts/script.php?script_id=3526)
* [autopairs](https://github.com/jiangmiao/auto-pairs)
* [unimpaired](https://github.com/tpope/vim-unimpaired)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

## Colorschemes
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [codeschool](https://github.com/29decibel/codeschool-vim-theme)
* [kolor](https://github.com/zeis/vim-kolor)

### Syntax

* [python](http://www.vim.org/scripts/script.php?script_id=790)
* [php](http://www.vim.org/scripts/script.php?script_id=1571)
* [javascript](https://github.com/pangloss/vim-javascript)


### Installation

`sudo apt-get install exuberant-ctags`


## Features

### Navigation

* Uses tab navigation like firefox.


      `Ctrl-tab` to change tabs
      `Ctrl-t` to open tab
      `Ctrl-x` to close tab

* NERDTree
    
    `Ctrl-n` Toggle NERDTree

* [cntrlp](https://github.com/kien/ctrlp.vim)

  This plugin adds fuzzy file searching. 
  ## Basic Usage
  * Run `:CtrlP` or `:CtrlP [starting-directory]` to invoke CtrlP in find file mode.
  * Run `:CtrlPBuffer` or `:CtrlPMRU` to invoke CtrlP in find buffer or find MRU file mode.
  * Run `:CtrlPMixed` to search in Files, Buffers and MRU files at the same time.


* Buffers

  The unimparied plugin adds mappings to move easily between buffers and search results.

  There are mappings which are simply short normal mode aliases for
  commonly used ex commands. `]q` is :cnext. `[q` is :cprevious. `]a` is
  :next.  `[b` is :bprevious.  See the documentation for the full set of
  20 mappings and mnemonics.  All of them take a count.

* Editing

  *Multiple Cursors*
   
  In normal mode use cursor to select word then use the binding `C-c` to select each next match.  Then `c` to change word and enter replacement word for each selected instance.

  `C-c` next match
  `C-x` previous match
  `C-z` skip match
  `Esc` quit   


### Development

* DBGPavim 
* syntastic

### Text Completion

* Supertab used for tab completion
* SearchComplete adds tab completion inside / search

### System intergration

* Enable paste from system clipboard

     `Ctrl-v`
    
### User interface tweaks

* Powerline intergration


## Font

Droid Sans Mono is used which is available from [google fonts](https://www.google.com/fonts).  Download the font zip from google and extract to `/usr/share/fonts`



