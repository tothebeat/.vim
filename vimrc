" https://github.com/EvanHahn/dotfiles/tree/master/resources/vim
source ~/.vim/vundle.vim
source ~/.vim/interface.vim

set encoding=utf-8

execute pathogen#infect()
" http://blog.sanctum.geek.nz/vim-annoyances/
set backupdir=~/.vim/backup
set directory=~/.vim/swap
" damn you, F1! I'm just flailing to hit Escape, I don't want help!
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
" Remove trailing whitespace from every line
nnoremap <silent> <F2> :%s/\s\+$//e<CR>
" http://vim.wikia.com/wiki/Highlight_current_line
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
" Remap the arrow keys to nothing to force me to use hjkl for movement 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set shortmess+=I
set backspace=indent,eol,start
set visualbell t_vb=
set virtualedit=block
set expandtab
set tabstop=4
set shiftwidth=4
" Show name of file and current path in window title
set title
syntax on
filetype plugin indent on
" auto-reload vimrc on changes: http://stackoverflow.com/a/2400289
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END
" Always show status line
set laststatus=2
" Allow hidden unsaved buffers
set hidden

let g:pymode_virtualenv = 1
let g:airline_extensions_virtualenv_enabled = 1
let g:airline_powerline_fonts = 1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs = 1 " Put errors on left side
let g:syntastic_quiet_warnings = 1 " Only errors, not warnings please
if has('unix')
        let g:syntastic_error_symbol = '★'
        let g:syntastic_style_error_symbol = '>'
        let g:syntastic_warning_symbol = '⚠'
        let g:syntastic_style_warning_symbol = '>'
else
        let g:syntastic_error_symbol = '!'
        let g:syntastic_style_error_symbol = '>'
        let g:syntastic_warning_symbol = '.'
        let g:syntastic_style_warning_symbol = '>'
endif

nmap <silent> <c-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_autoclose = 1
if has('autocmd')
        au Filetype nerdtree setlocal nolist
endif


