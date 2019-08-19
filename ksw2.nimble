# Package

version = "0.0.2"
description   = "smith-waterman via nim wrapper for lh3/ksw2"
author        = "Brent Pedersen"
license       = "MIT"
#skipFiles     = @["tests.nim"]
#installFiles  = @["src/kexpr.nim", "src/kexpr-c.c", "src/kexpr-c.h"]
srcDir = "src"

requires "nim >= 0.20.0"

#task test, "tests":
#    exec "nim c -r tests.nim"
