pragma solidity >=0.4.22 <0.6.0;

contract DeleteExample {
    uint data;
    uint[] dataArray;

    function f() public {
        uint x = data;

        // x를 0으로 초기화합니다.
        delete x;

        // data를 0으로 초기화합니다.
        // x는 data의 값을 참조하므로 영향이 없습니다.
        delete data;
        uint[] storage y = dataArray;
        y[2] = 3;

        // dataArray.length는 0입니다.
        // y는 dataArray를 참조하므로 y.length도 0입니다.
        delete dataArray;
        
        // 참조 타입은 delete 연산자를 사용할 수 없으므로 delete y는 에러가 발생합니다.
        // delete y;
    }
}