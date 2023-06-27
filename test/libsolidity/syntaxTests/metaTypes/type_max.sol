contract C {
    function max() public returns (uint8) {
        return type(int8).max;
    }
}
// ----
// TypeError 6359: (72-86): Return argument type int8 is not implicitly convertible to expected type (type of first return variable) uint8.
