call plug#begin(stdpath('data').'/plugged')
	" Plug 'autozimu/LanguageClient-neovim', {
	" 			\ 'branch':'next',
	" 			\ 'do':'bash install.sh',
	" 			\ }
        "
        Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
        Plug 'evanleck/vim-svelte', {'branch': 'main'}
        Plug 'cespare/vim-toml'
        Plug 'andreasvc/vim-256noir'
        Plug 'vim-crystal/vim-crystal'
        Plug 'vim-ruby/vim-ruby'
        Plug 'zah/nim.vim'
        Plug 'slint-ui/vim-slint'
        Plug 'fatih/vim-go'
        " JS için, yani
        Plug 'pangloss/vim-javascript'
        Plug 'leafgarland/typescript-vim'
        Plug 'maxmellon/vim-jsx-pretty'
        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
        Plug 'jparise/vim-graphql'
        Plug 'turbio/bracey.vim'
        Plug 'yardnsm/vim-import-cost', { 'do': 'npm install --production' }
        Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
        " JS Bitiş
        Plug 'elixir-editors/vim-elixir'
        Plug 'dag/vim-fish'
        Plug 'mattn/emmet-vim'
        Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
        Plug 'Yggdroot/indentLine'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-haml'
        Plug 'tpope/vim-rails'
        Plug 'rstacruz/vim-closer'
        Plug 'tpope/vim-endwise'
        Plug 'ycm-core/YouCompleteMe'
        Plug 'dense-analysis/ale'
        Plug 'alvan/vim-closetag'
        Plug 'junegunn/rainbow_parentheses.vim'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'preservim/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'ryanoasis/vim-devicons'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'ntpeters/vim-better-whitespace'
        Plug 'axvr/photon.vim'
        Plug 'tpope/vim-fugitive'
        Plug 'mhinz/vim-signify'
        Plug 'mhinz/vim-startify'
        Plug 'github/copilot.vim'
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/limelight.vim'
call plug#end()
