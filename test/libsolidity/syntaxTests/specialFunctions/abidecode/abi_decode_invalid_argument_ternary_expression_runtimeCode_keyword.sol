contract D { }

contract C {
    function f(bool c) pure public {
        abi.decode("", ((c ? type(C) : type(D)).runtimeCode));
    }
}
// ----
// TypeError 1039: (90-125): Argument has to be a type name.
