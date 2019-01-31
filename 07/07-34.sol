pragma solidity >=0.4.22 <0.6.0;

contract Sharer {
    function sendHalf(address payable addr) public payable returns (uint balance) {
        // 2로 나눌 수 있는 금액만 사용할 수 있습니다.
        require(msg.value % 2 == 0);
        uint balanceBeforeTransfer = address(0).balance;
        addr.transfer(msg.value / 2);

        // transfer 함수는 송금을 실패했을 때 에러를 발생시키지만 상태를 되돌릴 수 없습니다.
        // 반드시 송금할 수 있는지 확인해야 합니다.
        assert(address(0).balance == balanceBeforeTransfer - msg.value / 2);
        return address(0).balance;
    }
}