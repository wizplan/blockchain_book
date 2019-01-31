pragma solidity ^0.4.25;

contract Constant {
    uint constant public data = 42;

    // 에러 발생. 상수는 바꿀 수 없습니다.
    function set() public pure returns (uint) {
        data = 20;
    }
}