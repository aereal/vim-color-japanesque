" japanesque.vim
" ----------------------------------------
" Author: Aoki Hanae (http://aereal.org/)
" License: Creative Commons Attribution-NonCommercial 3.0 Unported License
" ----------------------------------------

" Setup {{{
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'japanesque'
" }}}

" Utilities {{{

" Original from Hemisu Color Scheme for Vim
" (http://noahfrederick.com/vim-color-scheme-hemisu/)
"
" Author: Noah Frederick (http://noahfrederick.com/)
" License: Creative Commons Attribution-NonCommercial 3.0 Unported License
function! s:h(group, style)
  execute "highlight" a:group
      \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
      \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
      \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
      \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
      \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
      \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
      \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction
" }}}

let s:black      = {'gui': '#1E1E1E', 'cterm': 'Black'}
let s:gray       = {'gui': '#AEB5B1', 'cterm': 'Gray'}
let s:dark_gray  = {'gui': '#585A58', 'cterm': 'DarkGray'}
let s:white      = {'gui': '#F7F6EC', 'cterm': 'White'}
let s:red        = {'gui': '#CF3F61', 'cterm': 'Red'}
let s:green      = {'gui': '#7BB75B', 'cterm': 'Green'}
let s:yellow     = {'gui': '#E9B32A', 'cterm': 'Yellow'}
let s:blue       = {'gui': '#4C9AD4', 'cterm': 'Blue'}
let s:pink       = {'gui': '#D18FA6', 'cterm': 'Magenta'}
let s:cyan       = {'gui': '#389AAD', 'cterm': 'Cyan'}
let s:dark_red   = {'gui': '#A96360', 'cterm': 'DarkRed'}
let s:dark_green = {'gui': '#767F2C', 'cterm': 'DarkGreen'}
let s:brown      = {'gui': '#78592F', 'cterm': 'DarkYellow'}
let s:dark_blue  = {'gui': '#135979', 'cterm': 'DarkBlue'}
let s:magenta    = {'gui': '#A57FC4', 'cterm': 'DarkMagenta'}

if &background == 'dark'
  let s:normal           = s:white
  let s:bg               = s:black
  let s:obbligato        = s:pink
  let s:plain            = s:pink
  let s:ok               = s:green
  let s:annotate         = s:yellow
  let s:fatal            = s:dark_red
  let s:invisible        = s:gray
  let s:hidden           = s:dark_gray
  let s:charm            = s:magenta
  let s:subdued_annotate = s:brown
  let s:accent           = s:red
  let s:composed         = s:green
  let s:highlight        = s:cyan
else
  let s:normal           = s:gray
  let s:bg               = s:white
  let s:obbligato        = s:pink
  let s:plain            = s:magenta
  let s:ok               = s:green
  let s:annotate         = s:blue
  let s:fatal            = s:dark_red
  let s:invisible        = s:gray
  let s:hidden           = s:gray
  let s:charm            = s:magenta
  let s:subdued_annotate = s:brown
  let s:accent           = s:red
  let s:composed         = s:dark_green
  let s:highlight        = s:blue
endif
" }}}

hi! link IncSearch Search
hi! link MoreMsg ModeMsg
hi! link Function Identifier
hi! link PreProc Statement
hi! link Special NonText
hi! link Error ErrorMsg
hi! link htmlTag Type
hi! link htmlEndTag htmlTag
" hi! link perlArrow NONE

" UI {{{
call s:h('Normal', {'fg': s:normal, 'bg': s:bg})
call s:h('Visual', {'bg': s:magenta})
call s:h('Cursor', {'fg': s:bg, 'bg': s:obbligato})
call s:h('Folded', {'fg': s:accent, 'gui': 'bold', 'cterm': 'bold'})
call s:h('FoldColumn', {'fg': s:normal})
call s:h('ModeMsg', {'fg': s:ok, 'gui': 'bold', 'cterm': 'bold'})
call s:h('WarningMsg', {'fg': s:annotate, 'gui': 'bold', 'cterm': 'bold'})
call s:h('ErrorMsg', {'fg': s:fatal, 'gui': 'bold', 'cterm': 'bold'})
call s:h('LineNr', {'fg': s:hidden})
call s:h('SpecialKey', {'fg': s:hidden})
call s:h('NonText', {'fg': s:hidden})
call s:h('MatchParen', {'fg': s:obbligato, 'bg': s:hidden})
call s:h('CursorLine', {'bg': s:bg, 'gui': 'underline', 'cterm': 'underline'})
call s:h('Pmenu', {'bg': s:subdued_annotate})
call s:h('PmenuSel', {'bg': s:charm})
call s:h('Title', {'fg': s:accent, 'gui': 'bold', 'cterm': 'bold'})
call s:h('VertSplit', {'fg': s:hidden, 'bg': s:invisible})
call s:h('Question', {'fg': s:ok, 'gui': 'bold', 'cterm': 'bold'})
call s:h('Search', {'bg': s:highlight})
call s:h('SpellBad', {'sp': s:fatal, 'gui': 'undercurl'})
call s:h('TabLine', {'fg': s:normal, 'bg': s:subdued_annotate})
call s:h('TabLineFill', {'fg': s:normal, 'bg': s:subdued_annotate})
call s:h('TabLineSel', {'fg': s:normal, 'bg': s:charm})
" }}}
" Diff {{{
call s:h('DiffAdd', {'fg': s:ok})
call s:h('DiffChange', {'fg': s:annotate})
call s:h('DiffDelete', {'fg': s:fatal})
call s:h('DiffText', {'fg': s:charm, 'gui': 'bold', 'cterm': 'bold'})
" }}}
" Syntax {{{
call s:h('Delimiter', {'fg': s:invisible})
call s:h('Comment', {'fg': s:invisible})
call s:h('Underlined', {'gui': 'underline', 'cterm': 'underline'})
call s:h('Type', {'fg': s:annotate})
call s:h('Identifier', {'fg': s:accent})
call s:h('Constant', {'fg': s:composed})
call s:h('Statement', {'fg': s:plain})
call s:h('Todo', {'bg': s:subdued_annotate})

call s:h('perlStatement', {'fg': s:invisible})
" call s:h('perlString', {'fg': s:invisible})
" }}}

" vim:set foldmethod=marker:
