pragma solidity >=0.4.22 <0.6.0;

contract OutputParams {
    function arithmetics(uint _a, uint _b) public pure returns (uint o_sum, uint o_product) {
        o_sum = _a + _b;
        o_product = _a * _b;
    }
}