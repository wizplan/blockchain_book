pragma solidity >=0.4.22 <0.6.0;

contract Pure {
    function add(uint _x, uint _y) public pure returns (uint) {
        return _x + _y;
    }
}