pragma solidity >=0.4.22 <0.6.0;

contract Integers {
    // 3 / 2는 반올림해서 1입니다. 1 * 2를 계산해 2를 리턴합니다.
    function getTwo() public pure returns (uint) {
        uint a = 3;
        uint b = 2;
        return a / b * 2;
    }

    // 정수 리터럴이므로 3 / 2는 1.5입니다. 1.5 * 2를 계산해 3을 리턴합니다.
    function getThree() public pure returns (uint) {
        return 3 / 2 * 2;
    }

    // 주석을 풀면 컴파일 에러가 발생합니다.
    /* function divByZero() public pures returns (uint) {
        return 3 / 0;
    } */

    function shift() public pure returns(uint[2] memory) {
        uint[2] memory a;
        
        // 16 * 2 ** 2 = 64
        a[0] = 16 << 2;

        // -16 * 2 ** 2 = -64는 컴파일 에러가 발생합니다.
        // a[0] = -16 << 2;

        // 16 / 2 ** 2 = 4
        a[1] = 16 >> 2;

        return a;
    }
}