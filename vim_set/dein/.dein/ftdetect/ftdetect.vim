" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
" Dockerfile
autocmd BufRead,BufNewFile Dockerfile set ft=Dockerfile
autocmd BufRead,BufNewFile Dockerfile* setf Dockerfile
autocmd BufRead,BufNewFile *.dock setf Dockerfile
autocmd BufRead,BufNewFile *.[Dd]ockerfile setf Dockerfile
