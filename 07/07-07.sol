pragma solidity >=0.4.22 <0.6.0;

contract Bytes {
    // bytes2는 2바이트입니다.
    function bybb() public pure returns (bytes2) {
        bytes2 b = "ba";
        return b;
    }

    // bytes는 동적 크기의 바이트 배열입니다. 참조 타입입니다.
    function bybaab() public pure returns (bytes memory) {
        bytes memory a = 'baaaaaaaaaa';
        return a;
    }
}