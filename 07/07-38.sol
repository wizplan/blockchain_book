pragma solidity ^0.4.25;

contract Pure {
    function add(uint _x, uint _y) public pure returns (uint) {
        return _x + _y;
    }
}