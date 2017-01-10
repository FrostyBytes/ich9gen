# ich9gen

Fork of Libreboot's `ich9gen` tool. Basically, this fork exists to
allow you to use Libreboot's `ich9gen` without downloading all of
Libreboot and then figuring out how to compile only `ich9gen`.

Modifications were made to the upstream code include:

* Extraction of only the files required to compile `ich9gen`, not
  other `ich9deblob`-related files in the same subdirectory.

* Flattening of the directory structure. Four subdirectories was
perceived as an excessive amount of modularity for a tool that is just
supposed to fill in a `POD` `struct` and dump it to a file.

* Addition of a `Makefile` that compiles and runs `ich9gen`. After
  doing `make`, you should end up with the `.bin` files, ready to be
  patched onto the head of a coreboot image.

In case you forgot, the way to patch a `.bin` file is:

  `dd if=./appropriate.bin of=./coreboot.rom conv=notrunc`

The `conv=notrunc` is very important: without it, `dd` will truncate
the output file before starting to copy to it (which would result in
ending up with a file that contains *only* with the descriptor).
