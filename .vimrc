"vi와 호환하지 않음
set nocompatible

"rtp, runtimepath($VIMRUNTIME)에 Vundle path 추가
set rtp+=~/.vim/bundle/Vundle.vim

filetype plugin on

"plugin 적용
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'frazrepo/vim-rainbow'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'blueyed/vim-diminactive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
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

"tab 너비 설정
set tabstop=4

">>, << 키로 들여/내어쓰기 할때, 스페이스 개수
set shiftwidth=4

"작업중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set autoread

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

" ========= [vim-indent-guides] =========
" vim 실행시 indent guide 적용
let g:indent_guides_enable_on_vim_startup = 1 

" indent auto color 적용 안함 (안예쁨)
let g:indent_guides_auto_colors = 0 
hi IndentGuidesEven ctermbg=239
hi IndentGuidesOdd  ctermbg=236

" indent guide가 적용되는 첫번째 indent 설정
let g:indent_guides_start_level = 1

" indent guide size 설정
let g:indent_guides_guide_size = 4 

" ========= [vim-rainbow] =========
" 매칭되는 괄호 색깔을 세팅한다.
let g:rainbow_active = 1

" 괄호색깔은 아래 순서대로 시작된다.
let g:rainbow_ctermfgs = ['gray', 'lightblue', 'red', 'lightgreen', 'yellow', 'lightgray', 'magenta','green', 'white']

" ========= [vim-gitgutter] =========
" 깃 변경사항을 적용사항을 오른쪽에 표시한다.
let g:gitgutter_enabled = 1

" gitgutter Column 배경을 검정색으로 세팅
hi SignColumn ctermbg = black 

" 추가표시는 녹색으로 세팅
hi GitGutterAdd ctermfg = 2 

" 변경표시는 노란색으로 세팅
hi GitGutterChange ctermfg = 3

" 삭제표시는 빨간색으로 세팅
hi GitGutterDelete ctermfg = 1

" ChangeDelete가 뭐야?
hi GitGutterChangeDelete ctermfg = 4

"=========== [vim-indent-object] ==========
"ESC mode에서 vii를 하면, 동일한 인덴트가 전부 visual 모드로 바뀜

"========== [nerdcommenter] =============
" ESC mode에서 \ c c 를 누르면, 해당 블락이 comment 된다. ( 특히 \ c s 는 sexycomment ) 
" ESC mode에서 \ c u 를 누르면, 해당 블락이 uncomment 된다.

" Add spaces after comment delimiters by default (0: disable / 1: enable)
let g:NERDSpaceDelims = 1

" Sexcy Comment 사용
let g:NERDCompactSexyComs = 1

" 주석을 해제할때 문장끝에 공백을 자동으로 지운다. (0: disable / 1: enable, default)
let g:NERDTrimTrailingWhitespace = 1 

"========== [vim-diminactive] =============
" vsplit 상태에서 작업중이 아닌 윈도우는 색깔표시 (0: disable / 1: enable)
let g:diminactive_use_colorcolumn = 1 

" 옅은 파란색으로 표시
hi ColorColumn ctermbg=17

"========== [vim-airline] =============
" 상단의tab line에 버퍼를 켠다 (0: disable / 1: enable)
let g:airline#extensions#tabline#enabled = 1 

" 하단에 branch명을 표시 
let g:airline#extensions#branch#enabled = 1

" 하단의 status bar에 git 변경사항을 를 켠다 (0: disable / 1: enable)
let g:airline#extensions#hunks#enabled = 0 
