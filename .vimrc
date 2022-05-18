"vi와 호환하지 않음
set nocompatible

"rtp, runtimepath($VIMRUNTIME)에 Vundle path 추가
set rtp+=~/.vim/bundle/Vundle.vim

"plugin 적용
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'frazrepo/vim-rainbow'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'blueyed/vim-diminactive'
call vundle#end()

"ecoding
set fileencodings=utf8,euc-kr

"line number 표시
set nu

"검색한 단어를 하이라이팅 (background LYellow, Foreground Red)
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

"괄호 입력시 자동으로 대응되는 괄호표시
set showmatch

"자동 들여쓰기
set autoindent
set smartindent
set cindent

"tab 너비 설정
set ts=4 sw=4 et

"자동 인덴트 너비 설정
set shiftwidth=4

"상태바 표시를 항상 한다.
set laststatus=2

"현재 커서 위치 표시
set ruler
set cursorline

"마우스 사용 가능
set mouse=a

"backspace 사용
set backspace=indent,eol,start

"구문 강조 사용
if has ("syntax")
	syntax on
endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesEven ctermbg=236
hi IndentGuidesOdd  ctermbg=235

let g:rainbow_active = 1

let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1

let g:diminactive_use_colorcolumn = 1
hi ColorColumn ctermbg=17

let g:airline#extensions#tabline#enabled = 1
