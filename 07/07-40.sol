pragma solidity >=0.4.22 <0.6.0;

contract ClientReceipt {
    event Deposit (
        address indexed _from,
        bytes32 indexed _id,
        uint _value
    );

    function deposit(bytes32 _id) public payable {
        emit Deposit(msg.sender, _id, msg.value);
    }
}