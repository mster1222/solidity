contract A {
    function f() public {}
}
contract C {
    function f() pure public {
        abi.decode("", (type(A).runtimeCode));
    }
}
// ----
// TypeError 1039: (110-129): Argument has to be a type name.
