""" [Reference] https://qiita.com/morikooooo/items/9fd41bcd8d1ce9170301
""" General Settings
set fenc=utf-8
set showcmd

""" Display Settings
" Apply color scheme 'molokai'
" IT NEED TO INSTALL molokai to $HOME/.vim/colors directory BEFORE APPLY THIS CONFIG
" [Reference] https://github.com/tomasr/molokai
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme molokai
" Enable syntax highlight
syntax enable
" Display line number
set number
" Highlight line number only (No highlight current line)
set cursorline
hi clear CursorLine

""" Status Line Settings
""" [Reference] https://qiita.com/tashua314/items/101f1bec368c75a90251
" Show file name
set statusline=%F
" Show modification status
set statusline+=%m
" Show read-only status
set statusline+=%r
" Show '[HELP]' if open help page
set statusline+=%h
" Show '[Prevew]' if open preview window
set statusline+=%w
" Right adjust after this
set statusline+=%=
" Show rows: 'Current/All'
set statusline+=[ROW:%l/%L]
" Show encoding
set statusline+=[ENC:%{&fileencoding}]
" Always show status-line
set laststatus=2

""" Search Settings
" Ignore type-case if the search strings is only lowercase
set ignorecase
" Make distinction type-case if the search strings includes uppercase
set smartcase
" Enable incremental search
set incsearch
" Back to the beginning if reach the end of the file in searching
set wrapscan
" Highlight the hit strings 
set hlsearch
" Cancel highlight if input [Esc] twice
nmap <Esc><Esc> :nohlsearch<CR><Esc>
