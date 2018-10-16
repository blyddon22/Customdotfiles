vmap <Leader>ya :call yapf#YAPF()<cr>
autocmd FileType python nnoremap <leader>ya :0,$!yapf --style='{based_on_style: facebook, COLUMN_LIMIT: 120, BLANK_LINE_BEFORE_NESTED_CLASS_OR_DEF: true}'<Cr>
