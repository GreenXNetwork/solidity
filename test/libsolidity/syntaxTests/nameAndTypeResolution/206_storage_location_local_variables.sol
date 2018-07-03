contract C {
    uint[] m_x;
    function f() public view {
        uint[] storage x = m_x;
        uint[] memory y;
        uint[] memory z;
        x;y;z;
    }
}
// ----
