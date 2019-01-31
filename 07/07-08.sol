pragma solidity >=0.4.22 <0.6.0;

contract Enum {
    enum Colors { Red, Blue, Green }

    Colors color;
    Colors constant defaultColor = Colors.Green;

    function setColor() public {
        color = Colors.Blue;
    }

    // setColor 함수를 호출하지 않으면 0(Red)을 리턴합니다.
    // setColor 함수를 호출하면 1(Blue)을 리턴합니다.
    function getColor() public view returns (Colors) {
        return color;
    }

    // 2(Green)를 리턴합니다.
    function getDefaultColor() public pure returns (uint) {
        return uint(defaultColor);
    }
}