// this used to be a semantics tests that was expected to fail, but is now caught at compile-time
contract C {
    function() internal returns (uint)[20] x;
    int mutex;
    function one() returns (uint) {
        function() internal returns (uint)[20] xmem;
        x = xmem;
        return 3;
    }
    function two() returns (uint) {
        if (mutex > 0)
            return 7;
        mutex = 1;
        // If this test fails, it might re-execute this function.
        x[0]();
        return 2;
    }
}
// ----
// Warning: (216-259): Variable is declared as a storage pointer. Use an explicit "storage" keyword to silence this warning.
// DeclarationError: (216-259): Uninitialized storage pointer. Did you mean '<type> memory xmem'?
