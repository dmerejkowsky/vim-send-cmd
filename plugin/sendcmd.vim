let g:last_cmd=""

function! sendcmd#sendcmd(args)
  execute "silent !send-cmd " . a:args
  execute "redraw!"
endfunction

command! -complete=file -nargs=* SendCmd :call sendcmd#sendcmd(<q-args>)
