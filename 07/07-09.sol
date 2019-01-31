pragma solidity >=0.4.22 <0.6.0;

contract Selector {
    function e() public pure returns (bytes4) {
        // this를 사용하면 외부 함수를 호출하는 것입니다.
        return this.e.selector;
    }

    function f() public pure returns (uint) {
        // 내부 함수에는 selector 메서드가 없으므로 에러가 발생합니다.
        // return f.selector;

        // g()는 internal 키워드가 있으므로 내부 함수입니다. 여기에서는 호출할 수 없습니다.
        return g();
    }

    function g() internal pure returns (uint) {
        return 0;
    }
}