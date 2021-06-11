# Working with Nim bindings

The bindings uses `dynlib` module to work!

### Testing

1. Grab shared libs of SIGIL from [downloads](http://www.libsigil.com/#download) depending on your operating system and architecture.
2. Put them beside the files of this folder.
3. Compile with C backend via `nim c helloworld.nim` and run `helloworld` executable.

### Instructions

1. Grab shared libs of SIGIL from [downloads](http://www.libsigil.com/#download) depending on your operating system and architecture.
2. Put them beside the files of your game plus `SIGIL.nim`
3. Add `import SIGIL` in your code to work with SIGIL.
4. Compile your main Nim file to executable via C backend using `nim c` and then run the compiled executable.
