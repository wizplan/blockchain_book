pragma solidity >=0.4.22 <0.6.0;

contract SimpleStorageOwner {
    uint public storedData;

    // ① 계약을 배포한 계정 주소를 저장할 owner 변수를 정의합니다.
    address public owner;

    // ②
    constructor() public {
        // 생성자 정의
        owner = msg.sender;
    }

    // ③
    modifier onlyOwner() {
        // 생성자로 설정한 계정만 데이터 변경(거래)을 실행할 수 있게 설정합니다.
        // 생성자가 아니면 데이터 변경을 취소합니다.
        require(msg.sender == owner);

        // _는 함수 제한자입니다.
        _;
    }

    // ④ storedData 값 변경
    function set(uint x) onlyOwner public {
        storedData = x;
    }

    // ④ storedData 값 반환
    function get() onlyOwner public view returns (uint) {
        return storedData;
    }
}