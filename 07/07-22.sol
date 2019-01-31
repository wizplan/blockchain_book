pragma solidity >=0.4.22 <0.6.0;

contract InputParams {
    function taker1(uint _a, uint _b) public pure {
        _a;
        _b;
    }

    // _b를 사용하지 않는다면 파라미터 이름을 입력하지 않습니다.
    function taker2(uint _a, uint) public pure {
        _a;
    }
}