// this used to be a semantics tests that was expected to fail, but is now caught at compile-time
contract C {
    int mutex;
    function t() returns (uint) {
        if (mutex > 0)
            { assembly { mstore(0, 7) return(0, 0x20) } }
        mutex = 1;
        // Avoid re-executing this function if we jump somewhere.
        function() internal returns (uint)[200] x;
        x[0]();
        return 2;
    }
}
// ----
// Warning: (334-375): Variable is declared as a storage pointer. Use an explicit "storage" keyword to silence this warning.
// DeclarationError: (334-375): Uninitialized storage pointer. Did you mean '<type> memory x'?
