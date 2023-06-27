contract A {
    function f() public {}
}

contract B {
    function g() public {}
}

contract C {
    function f(bool getA) public returns (bytes memory) {
        return (getA ? type(A) : type(B)).runtimeCode;
    }
}
// ----
// TypeError 9717: (180-187): Invalid mobile type in true expression.
// TypeError 3703: (190-197): Invalid mobile type in false expression.
