" Whitespace Settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Searching for Ctrl-S | Fsf
:map <C-S> :tabnew \| Files<enter>

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Some config for erb
imap öö<tab> <esc>O<%=  %><esc>bhi
imap öe<tab> <esc>O<% end %><esc>O

" For YCM
set splitbelow

:command Firefox !firefox % > /dev/null
