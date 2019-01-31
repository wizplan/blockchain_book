pragma solidity >=0.4.22 <0.6.0;

contract Address {
    function () payable external { }

    function getBalance(address _t) public view returns (uint) {
        if (_t == address(0)) {
            _t = address(this);
        }

        return _t.balance;
    }

    function transfer(address payable _to, uint _amount) public {
        _to.transfer(_amount);
    }

    function send(address payable _to, uint _amount) public {
        if (!_to.send(_amount)) {
            revert();
        }
    }

    function call(address _to, uint _amount) public returns (bytes memory) {
        (bool success, bytes memory data) = address(_to).call.value(_amount).gas(1000000)("");
        if (!success) {
            revert();
        }
        
        return data;
    }

    function withDraw() public {
        address payable to = msg.sender;
        to.transfer(address(0).balance);
    }

    function withDraw2() public returns (bytes memory) {
        address payable to = msg.sender;
        (bool success, bytes memory data) = address(to).call.value(address(0).balance).gas(1000000)("");
        if (!success) {
            revert();
        }
        
        return data;
    }
}