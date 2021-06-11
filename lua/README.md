# Working with Lua bindings

The bindings uses FFI to work!

### Testing

1. Grap shared libs of SIGIL from [downloads](http://www.libsigil.com/#download) depending on your operating system and architecture.
2. Put them beside the files of this folder.
3. Run via Lua with `lua helloworld.lua` and it should works!

### Instructions

1. Grap shared libs of SIGIL from [downloads](http://www.libsigil.com/#download) depending on your operating system and architecture.
2. Put them beside the files of your game plus `SIGIL.lua`
3. Add `local sl = require("SIGIL")` in your code to work with SIGIL.
4. Run your code with Lua.
