let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/thanhnguyen2187
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +8 ~/Projects/thanhnguyen2187/content/gibberings/descent-into-madness.md
badd +8 ~/Projects/thanhnguyen2187/content/backlogs/chinese.md
badd +15 ~/Projects/thanhnguyen2187/Session.vim
badd +1 ~/Projects/thanhnguyen2187/.gitignore
badd +40 ~/Projects/thanhnguyen2187/content/gibberings/shitty-feelings.md
badd +2 ~/Projects/thanhnguyen2187/content/posts/living-the-terminal-dream.md
badd +18 ~/Projects/thanhnguyen2187/content/backlogs/to-read.md
badd +5 ~/Projects/thanhnguyen2187/archetypes/default.md
badd +0 ~/Projects/thanhnguyen2187/content/backlogs/to-read/fiction.md
badd +0 ~/Projects/thanhnguyen2187/build_push.sh
argglobal
%argdel
$argadd content/posts/on-blogging.md
edit ~/Projects/thanhnguyen2187/build_push.sh
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists("~/Projects/thanhnguyen2187/content/backlogs/to-read/fiction.md") | buffer ~/Projects/thanhnguyen2187/content/backlogs/to-read/fiction.md | else | edit ~/Projects/thanhnguyen2187/content/backlogs/to-read/fiction.md | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((29 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
wincmd w
wincmd =
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
