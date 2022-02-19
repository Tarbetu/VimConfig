" Whitespace Settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Searching for Ctrl-S | Fsf
:map <C-S> :tabnew \| Files<CR>

" Open NerdTree in the files
nnoremap <C-A> :NERDTreeToggle %:p:h<CR>

" Some config for ERB
" I'm using Turkish Q, so 'öö' and 'öç' is practical for me.
imap öö<tab> <esc>a<%=  %><esc>bhi
imap öç<tab> <esc>O<% end %><esc>ji

" The curse of Ruby
" Adds frozen_string_literal thing to the top
nmap fro<tab> <esc>ggO<esc>xxi# frozen_string_literal: true<esc>o<esc>xx

" For YCM
set splitbelow

" I'm a Firefox user.
" It opens the file in Firefox.
" I direct the output to /dev/null because I want to close the dialog
:command Firefox !firefox % > /dev/null
