pragma solidity >=0.4.22 <0.6.0;

contract ConversionTruncate {
    function f() public pure returns (uint16) {
        // 305419896을 설정합니다.
        uint32 a = 0x12345678;

        // 0x5678이 잘립니다.
        uint16 b = uint16(a);

        // 22136을 리턴합니다.
        return b;
    }
}