pragma solidity >=0.4.22 <0.6.0;

contract Target {
    uint x;

    constructor(uint a) public payable {
        x = a;
    }
}

contract CreateContract {
    // CreateContract의 생성자로 실행합니다.
    Target t = new Target(4);

    function createTarget(uint arg) public {
        Target newTarget = new Target(arg);
    }

    function createAndEndowTarget(uint arg, uint amount) public payable {
        // 생성과 함께 이더를 보냅니다.
        Target newTarget = (new Target).value(amount)(arg);
    }
}