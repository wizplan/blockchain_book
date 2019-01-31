pragma solidity >=0.4.22 <0.6.0;

contract View {
    function f(uint a, uint b) public view returns (uint) {
        return a * (b + 42) + now;
    }
}