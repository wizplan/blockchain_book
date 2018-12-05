// 컴파일러 버전 지정
pragma solidity ^0.4.24; // ①

// 계약 선언
contract SimpleStorage {
    // 변수 선언
    uint public storedData; // ②

    // storedData 값 변경 ③
    function set(uint x) public {
        storedData = x;
    }

    // storedData 값 반환 ④
    function get() public constant returns (uint) {
        return storedData;
    }
}