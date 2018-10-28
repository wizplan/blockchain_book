pragma solidity ^0.4.24;

contract Declarations {
    function foo() public pure returns (uint) {
        // baz는 함수 실행을 시작할 때 0으로 자동 초기화합니다.
        uint bar = 5;

        if (true) {
            bar += baz;
        } else {
            // if 문 조건이 true이므로 baz에는 10을 저장하지 않습니다.
            uint baz = 10;
        }

        // 5를 리턴합니다.
        return bar;
    }
}