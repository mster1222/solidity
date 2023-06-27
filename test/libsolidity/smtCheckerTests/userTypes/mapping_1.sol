type MyInt is int;
contract C {
    mapping(MyInt => int) m;
	function f(MyInt a) public view {
		assert(m[a] == 0); // should hold
		assert(m[a] != 0); // should fail
	}
}
// ====
// SMTEngine: all
// SMTIgnoreInv: yes
// ----
// Warning 6328: (98-115): CHC: Assertion violation might happen here.
// Warning 6328: (134-151): CHC: Assertion violation happens here.
// Warning 4661: (98-115): BMC: Assertion violation happens here.
