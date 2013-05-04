let g:last_cmd=""

function! sendcmd#sendcmd(args)
  execute "silent !send-cmd " . a:args
  execute "redraw!"
endfunction

function! sendcmd#exit()
  call sendcmd#sendcmd("exit")
endfunction

command! -complete=file -nargs=* SendCmd :call sendcmd#sendcmd(<q-args>)
command! SendCmdExit :call sendcmd#exit()
