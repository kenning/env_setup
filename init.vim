""""""""""""""""""""""""""""""
" Use this instead of .vimrc "
" Open with `vimedit`        "
""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

set shell=/bin/zsh

" Experimental: try to constantly shift the working directory
set autochdir


""""""""""""""""""""""""
" Begin stupid plugins "
""""""""""""""""""""""""

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  let g:ycm_confirm_extra_conf = 0

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " Autoformatting and doing it on save
    Plugin 'Chiel92/vim-autoformat'

    " Airline
    Plugin 'vim-airline/vim-airline'

    " ctrl shift f
    Plugin 'dyng/ctrlsf.vim'
    nnoremap <C-F> :CtrlSF

    " ctrlp 
    Plugin 'kien/ctrlp.vim'
      " set ctrlp home directory to directory vim was opened in
      let g:ctrlp_working_path_mode = 0
      " ignore node modules, ds_store, git, dist
      let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist\|build'

    " youcompleteme
    " Plugin 'Valloric/YouCompleteMe'
    " Try using ctrl + n instead, its pretty good

    " nord colorscheme
    Plugin 'arcticicestudio/nord-vim'

    " Easy Motion: makes search (/, ?) more visual
    Plugin 'easymotion/vim-easymotion'

    " Commentary: just does comments with `gcc`
    Plugin 'tpope/vim-commentary'

    " vim-smooth-scroll 
    Plugin 'cskeeters/vim-smooth-scroll'

    " JSX syntax 
    Plugin 'mxw/vim-jsx'

    " Syntastic "
    Plugin 'vim-syntastic/syntastic'
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

  call vundle#end()            " required
  filetype plugin indent on    " required

""""""""""""""""""""""
" End stupid plugins "
""""""""""""""""""""""
" netrw preview settings
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

" 'Indents in pretty much the right way most of the time'
:set smartindent

" 2 space tab stop always
:set softtabstop=2 shiftwidth=2 expandtab

" Syntax
syntax on
autocmd FileType js,html,css autocmd BufWritePre <buffer> :%s/\s\+$//e

" Folding is turned on, tracked by indentation
set foldmethod=indent
set foldlevel=1
" Minimum lines 4
set foldminlines=4

" No weird backspace thing in vim 7.4
set backspace=2

" WILD MODE!!
" these are the settings for tabbing to autocomplete a filename
set wildmode=longest,list,full
set wildmenu

" Color scheme
" set background=light
colorscheme nord

" 80 character line
let &colorcolumn=81
highlight ColorColumn ctermbg=103

" :set paste automatically when pasting then :set nopaste
set pastetoggle=<F2>

" :set dashes to count as part of a word for nicer jsx jumping
set iskeyword+=-


