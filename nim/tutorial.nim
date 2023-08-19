var a = 10

#echo a + k

var
  c = -11
  d = "Hello"
  e = '!'

var l = 'v'; var p = 100

const g = 9.81

var pi : float = 3.14

a = pi.int

echo "a = ", a

var myage = 43
echo myage * 365

echo (myage mod 3) == 0

let height = 175

let pipe : float = 3/8 * 2.54

echo pipe

let first_name = "Denis"
let last_name = "Shirshov"

let fullName = first_name &  ' ' & last_name
echo fullName

echo (30 / 15) * 400 > 3.14 * 8 * 30

proc foo(x : int) : int =
  case x
  of 1:
    return x
  of 2:
    return x*x
  else:
    discard



echo foo(222)
