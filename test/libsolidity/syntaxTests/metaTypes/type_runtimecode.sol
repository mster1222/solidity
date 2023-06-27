contract A {
    function f() public {}
}

contract C {
    function f() public returns (bytes memory) {
        return type(A).runtimeCode;
    }
}
// ----
// Warning 2018: (60-146): Function state mutability can be restricted to pure
