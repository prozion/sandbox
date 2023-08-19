noremap <leader>w :match Error /\v^\s\s*/<cr>
"nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cword>")) . " ."<cr>:copen 12<cr>
