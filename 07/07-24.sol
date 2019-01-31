pragma solidity >=0.4.22 <0.6.0;

contract OutputWithReturn {
    // 여러 값을 return으로 리턴합니다.
    function arithmetics(uint _a, uint _b) public pure returns (uint o_sum, uint o_product) {
        o_sum = _a + _b;
        o_product = _a * _b;

        // 2개 값을 리턴합니다.
        return (o_sum, o_product);
    }
}