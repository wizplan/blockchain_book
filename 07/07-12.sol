pragma solidity >=0.4.22 <0.6.0;

contract MemoryArrays {
    function f(uint len) public pure {
        // uint 타입의 동적 배열을 7개 만듭니다.
        uint[] memory a = new uint[](7);

        // 크기가 len으로 고정된 바이트 배열을 만듭니다.
        bytes memory b = new bytes(len);
        a[6] = 8;
        b[len] = 'a';
    }
}