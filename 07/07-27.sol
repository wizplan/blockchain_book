pragma solidity >=0.4.22 <0.6.0;

contract InfoFeed {
    function info() public payable returns (uint ret) {
        return 42;
    }

    function getBalance() public view returns (uint) {
        return address(0).balance;
    }
}

contract Consumer {
    InfoFeed feed;

    function customConsumer() public payable { }

    function setFeed(address addr) public {
        feed = InfoFeed(addr);
    }

    function callFeed() public {
        feed.info.value(10).gas(800)();
    }

    function getBalance() public view returns (uint) {
        return address(0).balance;
    }
}