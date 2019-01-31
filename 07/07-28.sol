pragma solidity >=0.4.22 <0.6.0;

contract NamedCalls {
    function f(uint key, uint value) public pure {
        // ...
    }

    function g() public pure {
        // key, value 순서 이외에 value, key 순서로 함수 f()를 호출합니다
        f({ value: 2, key: 3 });
    }
}