let g:ale_disable_lsp = 1
let g:ale_fixers = {
\       "ruby": ["rubocop"],
\       "rust": ["rustfmt"],
\       "java": ["google_java_format", "uncrustify"]
\}
let g:ale_fix_on_save = 1
