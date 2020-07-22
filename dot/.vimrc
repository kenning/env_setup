set nocompatible              " be iMproved, required
filetype off                  " required

set shell=/bin/bash

""""""""""""""""""""""""
" Begin stupid plugins "
""""""""""""""""""""""""

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  let g:ycm_confirm_extra_conf = 0

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " ctrlp 
    Plugin 'kien/ctrlp.vim'
      " set ctrlp home directory to directory vim was opened in
      let g:ctrlp_working_path_mode = 0
      " ignore node modules, ds_store, git, dist
      let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist\|build'

    " youcompleteme
    Plugin 'Valloric/YouCompleteMe'
    " Try using ctrl + n instead, its pretty good

    " JSX syntax
    Plugin 'mxw/vim-jsx'

    " Omnisharp "
    Plugin 'Omnisharp/omnisharp-vim'

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

    " Omnisharp "
    "
      " OmniSharp won't work without this setting
      filetype plugin on

      let g:OmniSharp_loglevel = 'debug'

      " Set the type lookup function to use the preview window instead of echoing it
      "let g:OmniSharp_typeLookupInPreview = 1

      " Timeout in seconds to wait for a response from the server
      let g:OmniSharp_timeout = 15

      " Don't autoselect first omnicomplete option, show options even if there is only
      " one (so the preview documentation is accessible). Remove 'preview' if you
      " don't want to see any documentation whatsoever.
      set completeopt=longest,menuone,preview

      " Fetch full documentation during omnicomplete requests.
      " There is a performance penalty with this (especially on Mono).
      " By default, only Type/Method signatures are fetched. Full documentation can
      " still be fetched when you need it with the :OmniSharpDocumentation command.
      "let g:omnicomplete_fetch_full_documentation = 1

      " Set desired preview window height for viewing documentation.
      " You might also want to look at the echodoc plugin.
      set previewheight=5

      " Tell ALE to use OmniSharp for linting C# files, and no other linters.
      let g:ale_linters = { 'cs': ['OmniSharp'] }

      augroup omnisharp_commands
          autocmd!

          " When Syntastic is available but not ALE, automatic syntax check on events
          " (TextChanged requires Vim 7.4)
          " autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

          " Show type information automatically when the cursor stops moving
          autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

          " The following commands are contextual, based on the cursor position.
          autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
          autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
          autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
          autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

          " Finds members in the current buffer
          autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

          autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
          autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
          autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
          autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
          autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>


          " Navigate up and down by method/property/field
          autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
          autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
      augroup END

      " Contextual code actions (uses fzf, CtrlP or unite.vim when available)
      nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
      " Run code actions with text selected in visual mode to extract method
      xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

      " Rename with dialog
      nnoremap <Leader>nm :OmniSharpRename<CR>
      nnoremap <F2> :OmniSharpRename<CR>
      " Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
      command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

      nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

      " Start the omnisharp server for the current solution
      nnoremap <Leader>ss :OmniSharpStartServer<CR>
      nnoremap <Leader>sp :OmniSharpStopServer<CR>

      " Add syntax highlighting for types and interfaces
      nnoremap <Leader>th :OmniSharpHighlightTypes<CR>

      " Enable snippet completion
      " let g:OmniSharp_want_snippet=1


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
colorscheme desert 

" 80 character line
let &colorcolumn=81
highlight ColorColumn ctermbg=103

" :set paste automatically when pasting then :set nopaste
set pastetoggle=<F2>

" :set dashes to count as part of a word for nicer jsx jumping
set iskeyword+=-

