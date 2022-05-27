set hidden

" Neovim Workpath
function! SourceThis(file)
  execute "source ~/.config/nvim/".a:file
endfunction

" VimPlug Extensions
call SourceThis("plugger.vim")

" Ale Settings
call SourceThis("ale.vim")

" Bracey Settings
call SourceThis("bracey.vim")

" Prettier Settings
call SourceThis("prettier.vim")

" Theme Settings
call SourceThis("theme_setting.vim")

" My Tweaks and Shortcuts | NERDTree related configs are here
call SourceThis("tweaks.vim")

" Some fixes for extensions
" they will be deleted if the extensions fixes the issues
call SourceThis("hotfixes.vim")
