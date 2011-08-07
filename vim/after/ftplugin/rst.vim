" mapping rst preview hotkeys ctrl+p to render html and preview in
" browser

:command Rst :!rst2html.py % > /tmp/rstprev.html && open /tmp/rstprev.html
:nnoremap <C-p> :Rst<CR>

" softwrapping words
:set wrap linebreak textwidth=0
