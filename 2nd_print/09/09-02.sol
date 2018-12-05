pragma solidity ^0.4.25;

contract Auction {
    address currentLeader;
    uint highestBid;
    mapping(address => uint) usersBalance;

    function bid() public payable {
        require(msg.value > highestBid);

        // 현재 최고 입찰 금액을 반환할 수 있게 업데이트한 후 저장합니다.
        usersBalance[currentLeader] += highestBid;
        currentLeader = msg.sender;
        highestBid = msg.value;
    }

    function withdraw() public {
        require(usersBalance[msg.sender] > 0 );

        // 환불 금액을 amount 변수에 할당합니다.
        uint amount = usersBalance[msg.sender] ;

        // 환불
        assert(msg.sender.send(amount));
    }
}