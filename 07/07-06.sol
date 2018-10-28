pragma solidity ^0.4.25;

contract Address {
    function () payable public { }

    function getBalance(address _t) public view returns (uint) {
        if (_t == address(0)) {
            _t = this;
        }

        return _t.balance;
    }

    function transfer(address _to, uint _amount) public {
        _to.transfer(_amount);
    }

    function send(address _to, uint _amount) public {
        if (!_to.send(_amount)) {
            revert();
        }
    }

    function call(address _to, uint _amount) public {
        if (!_to.call.value(_amount).gas(1000000)()) {
            revert();
        }
    }

    function withDraw() public {
        address to = msg.sender;
        to.transfer(address(0).balance);
    }

    function withDraw2() public {
        address to = msg.sender;
        if (!to.call.value(address(0).balance).gas(1000000)()) {
            revert();
        }
    }
}