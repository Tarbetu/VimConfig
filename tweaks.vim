" Whitespace Settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" New Tab | Fsf
:map <C-S> :tabnew \| Files<CR>
" New Vertical Split | Fsf
nmap <C-X> :vsplit<ESC><C-W>W:Files<CR>

" Open NerdTree in the files
nnoremap <C-A> :NERDTreeToggle %:p:h<CR>

" Some config for ERB
" I'm using Turkish Q, so 'öö' and 'öç' is practical for me.
autocmd FileType eruby imap öö<tab> <esc>a<%=  %><esc>bhi
autocmd FileType eruby imap öç<tab> <esc>a<% end %><esc>O
autocmd FileType eruby imap öm<tab> <esc>a<%  %><esc>bhi

" Better looking for markdown
autocmd FileType markdown set wrap linebreak
autocmd FileType markdown Goyo 80

" Clears the line
" You don't have any characters like 'ğ', right?
nmap ğğ ddO

" Emmet settings
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby, jsx, scss, sass EmmetInstall
let g:user_emmet_leader_key='ö'

" The curse of Ruby
" Adds frozen_string_literal thing to the top
autocmd FileType ruby nmap fro<tab> <esc>ggO<esc>xxi# frozen_string_literal: true<esc>o<esc>xx

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

" Color for Whitespace
let g:better_whitespace_guicolor="silver"
" Set linenumbers
:set number

" Folding | Copied and modified from:
" https://essais.co/better-folding-in-neovim/
setlocal foldmethod=indent
set nofoldenable
set foldlevel=99
set fillchars=fold:\ "The backslash escapes a space
set foldtext=CustomFoldText()
nmap zz za

function! CustomFoldText()
  let indentation = indent(v:foldstart)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let expansionString = repeat(" ", indentation)

  return expansionString . foldLevelStr . foldSizeStr
endfunction

" Goyo + Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Current line pointer
au BufEnter * setlocal cursorline
au BufLeave * setlocal nocursorline
