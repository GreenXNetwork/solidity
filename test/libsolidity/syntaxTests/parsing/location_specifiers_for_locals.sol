contract Foo {
    uint[] m_x;
    function f() public view {
        uint[] storage x = m_x;
        uint[] memory y;
    }
}
// ----
// Warning: (70-86): Unused local variable.
// Warning: (102-117): Unused local variable.
