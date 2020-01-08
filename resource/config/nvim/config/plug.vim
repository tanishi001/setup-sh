call plug#begin()
    Plug 'tomasr/molokai'
    Plug 'Yggdroot/indentLine'
    Plug 'scrooloose/syntastic'
    Plug 'cohama/lexima.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}
    Plug 'itchyny/lightline.vim'

    " deoplete setting
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif

    "Language Server Protocol setting
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
    "(Optional) Multi-entry selection UI.
    Plug 'junegunn/fzf'
    let g:deoplete#enable_at_startup = 1
call plug#end()
