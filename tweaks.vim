" Whitespace Settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Searching for Ctrl-S | Fsf
:map <C-S> :tabnew \| Files<CR>

" Open NerdTree in the files
nnoremap <C-A> :NERDTreeToggle %:p:h<CR>

" Some config for ERB
" I'm using Turkish Q, so 'öö' and 'öç' is practical for me.
imap öö<tab> <esc>a<%=  %><esc>bhi
imap öç<tab> <esc>a<% end %><esc>O
imap öm<tab> <esc>a<%  %><esc>bhi

" Redefine Keys for Emmet
let g:user_emmet_leader_key='ö'

" The curse of Ruby
" Adds frozen_string_literal thing to the top
nmap fro<tab> <esc>ggO<esc>xxi# frozen_string_literal: true<esc>o<esc>xx

" I'm interested in Java and I'm too lazy
" Source: https://vim.fandom.com/wiki/Auto_insert_Java_class_template_when_editing_a_new_Java_file
autocmd BufNewFile *.java
  \ exe "normal Opublic class " . expand('%:t:r') . " {\n}\<Esc>Gddggo  "


" For YCM
set splitbelow

" I'm a Firefox user.
" It opens the file in Firefox.
" I direct the output to /dev/null because I want to close the dialog
:command Firefox !firefox % > /dev/null

" For Async Updates for Signify
set updatetime=100

" For Startify, NerdTree bookmarks
" Read ~/.NERDTreeBookmarks file and takes its second column
function! s:nerdtreeBookmarks()
    let bookmarks = systemlist("cut -d' ' -f 2- ~/.NERDTreeBookmarks")
    let bookmarks = bookmarks[0:-2] " Slices an empty last line
    return map(bookmarks, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': function('s:nerdtreeBookmarks'), 'header': ['   NERDTree Bookmarks']}
        \]

" Color for Whitespace
let g:better_whitespace_guicolor="white"
" Set linenumbers
:set number

" Current line pointer
au BufEnter * setlocal cursorline
au BufLeave * setlocal nocursorline
