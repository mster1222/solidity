contract C {
    function f(bool c) pure public {
        abi.decode("", ((c ? type(uint) : type(int)).max));
    }
}
// ----
// TypeError 1039: (74-106): Argument has to be a type name.
