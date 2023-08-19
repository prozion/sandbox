import os, strutils

proc fib(n: int): int =
  if n == 0:
    0
  elif n == 1:
    1
  else:
    fib(n-1) + fib(n-2)

var value : int

try:
  if commandLineParams().len < 1:
    raise newException(IOError, "No value is given to calculate Fibonacci")
  value = parseInt(commandLineParams()[0])
except CatchableError as e:
  echo "Error: ", e.msg
  value = 1
finally:
  echo fib(value)




