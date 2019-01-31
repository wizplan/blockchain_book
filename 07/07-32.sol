pragma solidity >=0.4.22 <0.6.0;

contract ScopingErrors {
    function scoping() public pure {
        uint i = 0;

        while (i ++ <1) {
            uint same1 = 0;
        }

        while (i ++ <2) {
            // 같은 함수 안에서 same1을 두 번 정의할 수 없습니다.
            // uint same1 = 0;
        }
    }

    function minimalScoping() public pure {
        uint same2 = 0;

        // 같은 함수 안에서 same2를 두 번 정의할 수 없습니다.
        // uint same2 = 0;
    }

    function forLoopScoping() public pure {
        for (uint same3 = 0; same3 < 1; same3++) { }

        // 같은 함수 안에서 same3을 두 번 정의할 수 없습니다.
        // for (uint same3 = 0; same3 < 1; same3++) { }
    }
}