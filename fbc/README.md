# Working with FreeBASIC bindings

The bindings uses `#inclib` to work!

### Testing

1. Grab shared and static libs of SIGIL from [downloads](http://www.libsigil.com/#download) So on Microsoft Windows download MinGW 32-bit or 64-bit compiled ones, For Linux it appears you need to compile source of SIGIL to use
2. Put `libsigil.a` or `libsigil.dll.a` inside FreeBASIC's `lib` folder beside other static libs.
3. Put shared libs beside the files of this folder.
4. Compile `helloworld.bas` via `fbc helloworld.bas` then run compiled executable and it should works!

### Instructions

1. Grab shared and static libs of SIGIL from [downloads](http://www.libsigil.com/#download) So on Microsoft Windows download MinGW 32-bit or 64-bit compiled ones, For Linux it appears you need to compile source of SIGIL to use
2. Put `libsigil.a` or `libsigil.dll.a` inside FreeBASIC's `lib` folder beside other static libs.
3. Put shared files beside the files of your game.
4. Put `SIGIL.bi` beside your code or inside `inc` folder.
5. Add `#include "SIGIL.bi"` in your code to work with SIGIL.
6. Compile your code with `fbc` and run compiled executable!

### Acknowledgements

For unspecified reason drawing texts with `slText` function crashes the program, That's why commented in `helloworld.bas` example.
