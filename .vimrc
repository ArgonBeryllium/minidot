"mappings
	" mappings using the Alt key; split into 2 cases for compatibility
		if has('nvim')
		" alt line relocation
			noremap <A-k> ddkP
			noremap <A-j> ddp
		" buffers
			noremap <A-a> :badd 
			noremap <silent> <A-w> :bd<CR>
			noremap <silent> <A-h> :BufferPrevious<CR>
			noremap <silent> <A-l> :BufferNext<CR>
		else
		" alt line relocation
			noremap <ESC>k ddkP
			noremap <ESC>j ddp
		" buffers
			noremap <ESC>a :badd 
			noremap <silent> <ESC>w :bd<CR>
			noremap <silent> <ESC>h :bp!<CR>
			noremap <silent> <ESC>l :bn!<CR>
		endif

	" terminal exit
		tnoremap <Esc> <C-\><C-n>

	" find & replace
		noremap <F3> viw"9y:%s/\<<C-R>9\>//g<left><left>
		noremap <F4> viw"9y:bufdo %s/<C-R>9//g<left><left>

	" folds
		noremap <Space> za
		set foldlevel=2
		set foldmethod=indent
		autocmd BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp,*.rs :set foldmethod=syntax

	" autocomplete
		inoremap <expr> <Tab>   pumvisible() ? "<Down>" : "<Tab>"
		inoremap <expr> <S-Tab> pumvisible() ? "<Up>"   : ""
		inoremap <expr> <CR>    pumvisible() ? "<C-y>"  : "<CR>"

	inoremap <expr> <C-BS> <Esc><Esc>dbi

" setting internals
	set splitright splitbelow
	
	" appearance
	set wrap linebreak
	set number relativenumber
	set list listchars=tab:→\ ,trail:·
	" searching
	set ignorecase smartcase
	set incsearch
	
	set noswapfile
	
	set mouse=a
	
	set shiftwidth=0 "makes it default to tabstop
	set noexpandtab
	set tabstop=4
	
	set hid " keep undo log for saved & hidden buffers
	
	set updatetime=300 " frequent swap saving, useful for linters

	set ttimeoutlen=10 " reduce delay after ^[ (used for escape seqs like ones with Alt, but irritating when just trying to escape a mode)

	if has('nvim')
	" highlight colours
		hi Whitespace guifg=1
		hi Folded ctermfg=4
		hi Comment ctermfg=4
		hi Whitespace ctermfg=5
	endif
