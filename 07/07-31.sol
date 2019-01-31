pragma solidity >=0.4.22 <0.6.0;

contract Assignment {
    uint[] data;

    // uint, bool, uint의 3개 타입 값을 리턴하는 함수입니다.
    function f() public pure returns (uint, bool, uint) {
        return (7, true, 2);
    }

    function g() public {
        uint x;
        bool b;
        uint y;
        
        // 기존 변수를 튜플 값으로 할당할 수 있습니다.
        (x, b, y) = f();

        // 이미 정의한 변수 타입에 맞게 할당합니다.
        (x, y) = (2, 7);

        // 두 변수의 값을 바꿀 때 유용합니다.
        (x, y) = (x, y);

        // length에 7을 넣습니다.
        // 튜플의 마지막이 빈 값이면 나머지 값은 무시합니다.
        (data.length, ,) = f();

        // 튜플의 첫 값이 비어 있으면 해당 값만 무시합니다.
        // data[3]에 2를 넣습니다.
        (, , data[3]) = f();
    }
}