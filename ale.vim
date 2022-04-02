let g:ale_disable_lsp = 1
let g:ale_fixers = {
\       "ruby": ["rubocop"],
\       "eruby": ["erblint"],
\       "rust": ["rustfmt"],
\       "java": ["google_java_format", "uncrustify"],
\       "xml": ["xmllint"],
\       "html": ["prettier"],
\       "css": ["prettier"],
\       "javascript": ["prettier"]
\}
let g:ale_fix_on_save = 1
