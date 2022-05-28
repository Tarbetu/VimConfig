let g:ale_disable_lsp = 1

let g:ale_fixers = {
\       '*': ['remove_trailing_lines', 'trim_whitespace'],
\       "ruby": ["rubocop"],
\       "eruby": ["trim_whitespace"],
\       "rust": ["rustfmt"],
\       "xml": ["xmllint"],
\       "html": ["prettier"],
\       "css": ["prettier"],
\       "javascript": ["prettier", "eslint"],
\       "cpp": ["clang-format", "clangtidy"],
\       "markdown": ["trim_whitespace"],
\       "elixir": ['mix_format']
\}

let g:ale_linters = {
\       "elixir": ["elixir-ls"],
\       "ruby": ["rubocop", "ruby", "solargraph"],
\       "javascript": ["eslint"]
\}

let g:ale_fix_on_save = 1
let g:ale_elixir_elixir_ls_release = expand("$HOME/İndirilenler/elixir-ls/rel")
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}
