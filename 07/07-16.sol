pragma solidity >=0.4.22 <0.6.0;

contract Structs {
    struct User {
        string name;
        string email;
    }

    User[] public users;

    function addUser(string memory _name, string memory _email) public {
        users.push(User(_name, _email));
    }

    function getUser(uint _id) public view returns (string memory, string memory) {
        // User storage u = users[_id];
        // u.name = "changed";
        return (users[_id].name, users[_id].email);
    }
}