pragma solidity ^0.4.25;

contract Omitted {
    // func의 두 번째 uint의 파라미터 이름은 생략했습니다.
    function func(uint k, uint) public pure returns (uint) {
        return k;
    }
}