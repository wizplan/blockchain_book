// 예제는 컴파일할 수 없습니다.
pragma solidity ^0.4.24;

contract ArrayLiteralsNotCompiled {
    function f() public pure {
        // uint[3] 배열 리터럴 타입이므로 동적 배열 uint[]에 할당할 수 없습니다.
        uint[] x = [uint(1), 3, 4];
    }
}