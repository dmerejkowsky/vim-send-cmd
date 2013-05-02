vim-send-cmd: Running asynchronous commands from vim
=====================================================

Whenever you run a command from vim, the entire screen is
replaced by the output of the command and you have to wait
until it is finished.

This command makes it possible to run the command in an
other terminal from vim, using UNIX named pipes (aka fifo)

Dependencies
-------------

Python: 2.7 and 3 are supported.

Usage
-----

Put the two binaries in your path.

In one terminal, run::

  recieve-cmd

From vim, run ::

  :SendCmd

And then type the command you wish to run from the input box, and watch
the command run from the other terminal.

To kill the "remote"  loop, just send the "exit" command


TODO
----

* have a real completion

* find an other IPC mechanism for windows

