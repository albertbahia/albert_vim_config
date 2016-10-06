" set syntax highlighting on.
syntax on

" set syntax theme.
colorscheme distinguished
set background=dark

" set line number to show.
set number

" sets automatic indenting.
set autoindent
set tabstop=2  shiftwidth=2

" set files with extension .md to be recognized as markdown.
filetype on

" open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
execute pathogen#infect()
call pathogen#helptags()
map <C-n> :NERDTreeToggle<CR>

" sets VIM-Flavored-Markdown
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END	
