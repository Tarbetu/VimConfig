let g:ale_disable_lsp = 1
let g:ale_fixers = {
\       "ruby": ["rubocop"],
\       "rust": ["rustfmt"],
\       "xml": ["xmllint"],
\       "html": ["prettier"],
\       "css": ["prettier"],
\       "javascript": ["prettier"],
\       "cpp": ["clang-format", "clangtidy"],
\       "markdown": ["trim_whitespace"]
\}
let g:ale_fix_on_save = 1
