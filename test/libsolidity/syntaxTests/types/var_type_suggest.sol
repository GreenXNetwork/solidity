contract C {
    function g(uint x) internal pure returns (uint) {
        return x;
    }
    function f() internal pure {
        var i = 31415;
        var t = "string";
        var g2 = g;
        var myblockhash = block.blockhash;
        var (a, b) = (2, "troi");
    }
}
// ----
// SyntaxError: (132-137): Use of the "var" keyword is disallowed. Use explicit type `uint16' instead.
// SyntaxError: (155-160): Use of the "var" keyword is disallowed. Use explicit type `string' instead.
// SyntaxError: (181-187): Use of the "var" keyword is disallowed. Use explicit type `function (uint256) pure returns (uint256)' instead.
// SyntaxError: (201-216): Use of the "var" keyword is disallowed. Type cannot be expressed in syntax.
// SyntaxError: (249-250): Use of the "var" keyword is disallowed. Use explicit type `uint8' instead.
// SyntaxError: (252-253): Use of the "var" keyword is disallowed. Use explicit type `string' instead.
