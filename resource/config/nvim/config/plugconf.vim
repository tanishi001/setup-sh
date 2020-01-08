" molokaiの設定
colorscheme molokai
set t_Co=256
syntax enable

" Syntasticの設定
let g:syntastic_enable_signs = 1 " 構文エラー行に「>>」を表示
let g:syntastic_always_populate_loc_list = 1 " Vimの他のプラグインとの競合を防ぐ
let g:syntastic_auto_loc_list = 0 " 構文エラーリストを非表示
let g:syntastic_check_on_open = 1 " ファイルを開いた時に構文エラーチェックを実行する
let g:syntastic_chech_on_wq = 1 " 「wq:」で終了する時も構文エラーチェックをする

" Language Server Protocol setting
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


