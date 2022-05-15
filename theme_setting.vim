set termguicolors
colorscheme ayu
let ayucolor="dark"
let g:airline_theme='ayu_dark'
" colorscheme photon
" let g:airline_theme="base16_black_metal_gorgoroth"
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE guifg=grey
hi Folded guibg=NONE guifg=BlueViolet
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd FileType Markdown highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE

" Limelight settings
let g:limelight_conceal_guifg = 'gray'
