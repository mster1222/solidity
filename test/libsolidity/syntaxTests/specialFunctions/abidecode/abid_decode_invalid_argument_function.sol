contract C {
    function f() pure public {
        abi.decode("", ((true ? addmod : addmod)(1, 2, 3)));
    }
}
// ----
// TypeError 1039: (68-101): Argument has to be a type name.
