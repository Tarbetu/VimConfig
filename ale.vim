let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc

let g:ale_fixers = {
\       "ruby": ["rubocop"],
\       "eruby": ["trim_whitespace"],
\       "rust": ["rustfmt"],
\       "xml": ["xmllint"],
\       "html": ["prettier"],
\       "css": ["prettier"],
\       "javascript": ["prettier"],
\       "cpp": ["clang-format", "clangtidy"],
\       "markdown": ["trim_whitespace"]
\}
let g:ale_fix_on_save = 1
