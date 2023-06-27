contract C {
    type T is address;
    mapping (T => uint) s;

    constructor() {
        s[T.wrap(address(0))] = 42;
    }

    function f(address a) external view {
        require(a != address(0));
        assert(s[C.T.wrap(a)] == 0); // should hold
    }

    function g(T a) external view {
        require(C.T.unwrap(a) == address(0));
        assert(s[a] != 42); // should fail
    }
}
// ----
// Warning 6328: (211-238): CHC: Assertion violation might happen here.
// Warning 6328: (352-370): CHC: Assertion violation happens here.
// Warning 4661: (211-238): BMC: Assertion violation happens here.
