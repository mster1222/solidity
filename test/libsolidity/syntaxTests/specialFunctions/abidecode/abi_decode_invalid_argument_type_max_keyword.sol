contract C {
    function f() pure public {
        abi.decode("", (type(uint).max));
    }
}
// ----
// TypeError 1039: (68-82): Argument has to be a type name.
