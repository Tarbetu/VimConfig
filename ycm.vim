" let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1
nmap " :lopen<enter><C-W>w
nmap <esc> :lclose<enter>

let g:ycm_add_preview_to_completeopt = 1

let g:ycm_use_clangd = 0

let g:ycm_language_server = [
\   {
\     'name': 'ruby',
\     'cmdline': [ 'solargraph', 'stdio' ],
\     'filetypes': [ 'ruby' ],
\   },
\   {
\     'name': 'slint',
\     'cmdline': [ 'slint-lsp' ],
\     'filetypes': [ 'slint' ],
\   },
\   {
\    'name': 'ccls',
\    'cmdline': ['ccls'],
\    'filetypes': ['c', 'cpp', 'cuda', 'objc', 'objcpp'],
\    'project_root_files': ['.ccls-root', 'compile_commands.json'],
\   }
\ ]
