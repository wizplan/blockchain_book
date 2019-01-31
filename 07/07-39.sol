pragma solidity >=0.4.22 <0.6.0;

contract Fallback {
    uint public counter = 1;

    function () external payable {
        if (msg.value <= 0) {
            revert();
        }
        counter++;
    }
}