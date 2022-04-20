let g:ale_disable_lsp = 1
let g:ale_fixers = {
\       "ruby": ["rubocop"],
\       "eruby": ["erblint"],
\       "rust": ["rustfmt"],
\       "xml": ["xmllint"],
\       "html": ["prettier"],
\       "css": ["prettier"],
\       "javascript": ["prettier"],
\       "cpp": ["clang-format", "clang-tidy"]
\}
let g:ale_fix_on_save = 1
let g:ale_eruby_erblint_options = "--enable-all-linters"
