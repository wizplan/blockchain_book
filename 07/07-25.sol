pragma solidity >=0.4.22 <0.6.0;

contract Controls {
    function f(uint _a, uint _b) public pure returns (uint res) {
        res = _a;

        // 정수 타입을 bool 타입으로 변환할 수 없으므로 에러가 발생합니다.
        /* if (1) {
            res += _b;
        } */

        // 중괄호를 생략할 수 있습니다.
        if (true)
            res += _b;
    }
}