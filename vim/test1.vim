function Foo(name)
    echo "hello, " . a:name
endfunction

call Foo("Mugambee")

function Rejoin(str, sym = "+")
    return join(split(a:str, " "), a:sym)
endfunction

echo Rejoin("foo bar")
echo Rejoin("foo bar", "---")
