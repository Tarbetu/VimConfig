let g:prettier#exec_cmd_async = 1
autocmd FileType js, jsx, html, css, json, svelte, html let b:prettier#quickfix_enabled = 0
" autocmd InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.svelte,*.yaml,*.html PrettierAsync
