" ---------------------------------------------------------
" 1️⃣ Plugins (vim-plug)
" ---------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'         " অটো ব্র্যাকেট ক্লোজিং
Plug 'preservim/nerdtree'           " ফাইল এক্সপ্লোরার
Plug 'preservim/tagbar'             " ফাংশন লিস্ট
Plug 'tpope/vim-commentary'         " দ্রুত কমেন্ট করার জন্য
Plug 'joshdick/onedark.vim'         " Zed-এর মতো আধুনিক ডার্ক থিম
Plug 'sheerun/vim-polyglot'         " উন্নত সিনট্যাক্স হাইলাইটিং
Plug 'vim-airline/vim-airline'     " নিচে সুন্দর স্ট্যাটাস বার
Plug 'vim-airline/vim-airline-themes' " স্ট্যাটাস বারের জন্য থিম
Plug 'dense-analysis/ale'           " এরর চেক (Linting)

call plug#end()

" ---------------------------------------------------------
" 2️⃣ UI & Color Settings (Zed-style Look)
" ---------------------------------------------------------
syntax on
set termguicolors            " ২৪-বিট কালার সাপোর্ট (খুবই জরুরি)
set background=dark
let g:onedark_terminal_italics = 1
let g:onedark_hide_end_of_buffer = 1 " নিচের বাড়তি ~ চিহ্ন লুকাবে
colorscheme onedark

" Airline (Status bar) সেটিংস
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1    " ফন্ট সুন্দর দেখানোর জন্য
let g:airline#extensions#tabline#enabled = 1 " উপরে ট্যাবের মতো ফাইল দেখাবে

" ইন্টারফেস ক্লিন করার সেটিংস
set laststatus=2             " স্ট্যাটাস বার সবসময় দেখাবে
set cursorline               " বর্তমানে যে লাইনে আছেন সেটি হাইলাইট হবে
set noshowmode               " নিচের --INSERT-- লেখাটি লুকাবে
set fillchars=vert:\│,eob:\   " বর্ডার ক্লিন দেখানোর জন্য
set scrolloff=8              " টাইপ করার সময় স্ক্রিনের নিচে জায়গা রাখবে

" ---------------------------------------------------------
" 3️⃣ Basic & Navigation Settings
" ---------------------------------------------------------
set nocompatible            
filetype plugin indent on  
set number                   " লাইন নম্বর
set relativenumber           " দ্রুত নেভিগেশনের জন্য রিলেটিভ নম্বর
set mouse=a                  " মাউস সাপোর্ট
set clipboard=unnamedplus    " সিস্টেম ক্লিপবোর্ড ব্যবহার (Copy-Paste)
set tabstop=4                
set shiftwidth=4            
set expandtab                " স্পেস দিয়ে ট্যাব ব্যবহার করা
set smartindent              
set ignorecase               
set smartcase                
set incsearch                " টাইপ করার সাথে সাথে সার্চ রেজাল্ট দেখাবে
set hlsearch                 " সার্চ রেজাল্ট হাইলাইট করা
set noswapfile               

" ---------------------------------------------------------
" 4️⃣ Key Mappings (সহজ কমান্ড)
" ---------------------------------------------------------
" Ctrl+s দিয়ে ফাইল সেভ
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Ctrl+q দিয়ে ক্লোজ
nnoremap <C-q> :q!<CR>

" F5 দিয়ে C প্রোগ্রাম কম্পাইল ও রান করা
nnoremap <F5> :w<CR>:!gcc % -o %< && ./%<<CR>

" Ctrl+n দিয়ে ফাইল মেনু (NERDTree) খোলা/বন্ধ করা
map <C-n> :NERDTreeToggle<CR>

" ---------------------------------------------------------
" 5️⃣ Plugin Specific Configurations
" ---------------------------------------------------------
let g:AutoPairsFlyMode = 0  " সাধারণ অটো-পেয়ার মোড
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

=====================Currently I am using this vim config==============================
" ---------------------------------------------------------
" 1️⃣ Plugins (vim-plug)
" ---------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'         " অটো ব্র্যাকেট ক্লোজিং
Plug 'preservim/nerdtree'           " ফাইল এক্সপ্লোরার
Plug 'preservim/tagbar'             " ফাংশন লিস্ট
Plug 'tpope/vim-commentary'         " দ্রুত কমেন্ট করার জন্য
"Plug joshdick/onedark.vim'         " Zed-এর মতো আধুনিক ডার্ক থিম
Plug 'sheerun/vim-polyglot'         " উন্নত সিনট্যাক্স হাইলাইটিং
"Plug 'vim-airline/vim-airline'     " নিচে সুন্দর স্ট্যাটাস বার
Plug 'vim-airline/vim-airline-themes' " স্ট্যাটাস বারের জন্য থিম
Plug 'dense-analysis/ale'           " এরর চেক (Linting)

call plug#end()

" ---------------------------------------------------------
" 2️⃣ UI & Color Settings (Zed-style Look)
" ---------------------------------------------------------
"syntax on
set termguicolors            " ২৪-বিট কালার সাপোর্ট (খুবই জরুরি)
set background=dark
let g:onedark_terminal_italics = 1
let g:onedark_hide_end_of_buffer = 1 " নিচের বাড়তি ~ চিহ্ন লুকাবে
"colorscheme onedark

" Airline (Status bar) সেটিংস
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1    " ফন্ট সুন্দর দেখানোর জন্য
let g:airline#extensions#tabline#enabled = 1 " উপরে ট্যাবের মতো ফাইল দেখাবে

" ইন্টারফেস ক্লিন করার সেটিংস
"set laststatus=2             " স্ট্যাটাস বার সবসময় দেখাবে
"set cursorline               " বর্তমানে যে লাইনে আছেন সেটি হাইলাইট হবে
"set noshowmode               " নিচের --INSERT-- লেখাটি লুকাবে
set fillchars=vert:\│,eob:\   " বর্ডার ক্লিন দেখানোর জন্য
set scrolloff=8              " টাইপ করার সময় স্ক্রিনের নিচে জায়গা রাখবে

" ---------------------------------------------------------
" 3️⃣ Basic & Navigation Settings
" ---------------------------------------------------------
set nocompatible            
filetype plugin indent on  
set number                   " লাইন নম্বর
set relativenumber           " দ্রুত নেভিগেশনের জন্য রিলেটিভ নম্বর
set mouse=a                  " মাউস সাপোর্ট
set clipboard=unnamedplus    " সিস্টেম ক্লিপবোর্ড ব্যবহার (Copy-Paste)
set tabstop=4                
set shiftwidth=4            
set expandtab                " স্পেস দিয়ে ট্যাব ব্যবহার করা
set smartindent              
set ignorecase               
set smartcase                
set incsearch                " টাইপ করার সাথে সাথে সার্চ রেজাল্ট দেখাবে
set hlsearch                 " সার্চ রেজাল্ট হাইলাইট করা
set noswapfile               

" ---------------------------------------------------------
" 4️⃣ Key Mappings (সহজ কমান্ড)
" ---------------------------------------------------------
" Ctrl+s দিয়ে ফাইল সেভ
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Ctrl+q দিয়ে ক্লোজ
nnoremap <C-q> :q!<CR>

" F5 দিয়ে C প্রোগ্রাম কম্পাইল ও রান করা
nnoremap <F5> :w<CR>:!gcc % -o %< && ./%<<CR>

" Ctrl+n দিয়ে ফাইল মেনু (NERDTree) খোলা/বন্ধ করা
map <C-n> :NERDTreeToggle<CR>

" ---------------------------------------------------------
" 5️⃣ Plugin Specific Configurations
" ---------------------------------------------------------
let g:AutoPairsFlyMode = 0  " সাধারণ অটো-পেয়ার মোড
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

