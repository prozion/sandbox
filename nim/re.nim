import std/re

proc expr(): bool = 
  match("foobar", re"f.*r") and
  match("foobar567", re".*[0-9]+")

when isMainModule:
  echo expr()

