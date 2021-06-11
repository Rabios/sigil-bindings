# Working with Boo bindings

The bindings uses P/Invoke to work!

### Testing

1. Grap shared libs of SIGIL from [downloads](http://www.libsigil.com/#download) depending on your operating system and architecture.
2. Put them beside the files of this folder.
3. Compile `sigil_boo` to library with `booc -t:library sigil_boo.boo` to use it.
4. Compile `helloworld.boo` via `booc helloworld.boo` then run the `helloworld` executable and it should works!

### Instructions

1. Grap shared libs of SIGIL from [downloads](http://www.libsigil.com/#download) depending on your operating system and architecture.
2. Put them beside the files of your game plus `sigil_boo.boo`
3. Compile `sigil_boo` to library with `booc -t:library sigil_boo.boo` in your code folder to use it.
4. Add `import sigil_boo` in your code to work with SIGIL.
5. Compile your file via `booc` then run the compiled executable!
