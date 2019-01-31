pragma solidity >=0.4.22 <0.6.0;

contract Conversions {
    function f() public pure returns (uint8) {
        int8 y = -3;
        uint8 x = uint8(y);

        // 256 - 3이므로 253을 리턴합니다.
        return x;
    }
}