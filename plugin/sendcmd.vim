let g:sendcmd_last_cmd = ""
function! sendcmd#sendcmd()
  let cmd = input("cmd: ", g:sendcmd_last_cmd, 'shellcmd')
  execute("!send-cmd " . cmd)
  let g:sendcmd_last_cmd = cmd
endfunction

command! SendCmd :call sendcmd#sendcmd()
