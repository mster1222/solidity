contract C
{
	mapping (uint => uint) map;
	function f(uint x, uint y) public view {
		assert(x == y);
		assert(map[x] == map[y]);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (86-100): CHC: Assertion violation happens here.
// Warning 6328: (104-128): CHC: Assertion violation might happen here.
// Warning 4661: (104-128): BMC: Assertion violation happens here.
