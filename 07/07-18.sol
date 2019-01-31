pragma solidity >=0.4.22 <0.6.0;

contract Mappings {
    struct User {
        string name;
        string email;
    }

    mapping(address => User) public users;

    function addUser(string memory _name, string memory _email) public {
        users[msg.sender].name = _name;
        users[msg.sender].email = _email;
    }

    function getUser() public view returns (string memory, string memory) {
        return (users[msg.sender].name, users[msg.sender].email);
    }
}