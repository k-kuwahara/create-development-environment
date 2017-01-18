" シンタックスカラー設定
syntax on
" カラースキーマ設定
colorscheme molokai
set t_Co=256
" 保存時のファイルエンコード
set fileencoding=utf-8
set fileencodings=utf-8,cp932
" tabの可視化
set list
" 改行時、自動インデントの無効化
set noautoindent
set noexpandtab
" 自動コメントアウトの無効化
autocmd FileType * setlocal formatoptions-=ro
" 内容が変更されたら自動的に再読み込み
set autoread
" カーソルラインの強調
set cursorline
" undo機能の設定
set undodir=$HOME/.vim/undodir
set undofile
" 行末の余分な空白の削除
autocmd BufWritePre * :%s/\s\+$//ge
" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
