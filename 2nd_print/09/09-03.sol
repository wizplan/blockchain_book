pragma solidity ^0.4.25;

contract Vulnerable {
    function () payable public {
        revert();
    }

    function doSomething() public view {
        require(address(0).balance > 0);
        // 여기에 작성하는 코드를 실행할 수도 있습니다.
    }
}