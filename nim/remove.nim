import std/sequtils

let s = [1,2,3,4,5,6,7]

proc remove[T](s: openArray[T], pred: proc (x: T): bool): seq[T] =
  filter(s, proc (x: T): bool = not pred(x))

when isMainModule:
  echo remove(s, proc(x: int): bool = x > 3)
