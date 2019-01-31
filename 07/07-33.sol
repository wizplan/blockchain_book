pragma solidity >=0.4.22 <0.6.0;

contract Declarations {
    function foo() public pure returns (uint) {
        // 함수 실행을 시작할 때의 자동 초기화를 확인하기 위해 uint baz;는 주석 처리
        uint bar = 5;
        // uint baz;

        if (true) {
            // baz를 자동 초기화하지 않으므로 에러 발생
            bar += baz;
        } else {
            // uint baz;의 주석을 풀어도 if 문 조건이 true이므로 baz에는 10을 저장하지 않습니다.
            baz = 10;
        }

        // 5를 리턴합니다.
        return bar;
    }
}