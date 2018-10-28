pragma solidity ^0.4.25;

contract Auction {
    address currentLeader;
    uint highestBid;

    function bid() public payable {
        require(msg.value > highestBid);
        require(currentLeader.send(highestBid));
        currentLeader = msg.sender;
        highestBid = msg.value;
    }
}