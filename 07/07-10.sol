pragma solidity >=0.4.22 <0.6.0;

contract DataLocation {
    // 지역 변수 선언이므로 기본 데이터 위치 타입은 storage입니다.
    uint[] x;

    // memoryArray는 함수 안에서 사용하므로 기본 데이터 위치 타입은 memory입니다.
    function f(uint[] memory memoryArray) public {
        // storage 타입의 memoryArray를 복사합니다.
        x = memoryArray;

        // x의 포인터를 저장합니다. y는 상태 변수이므로 storage 타입입니다
        uint[] storage y = x;

        // y의 8번째 요소입니다.
        y[7];

        // length 변수로 x의 배열 길이를 변경합니다.
        y.length = 2;

        // x를 삭제하면 참조하는 y도 삭제합니다.
        delete x;

        // y는 상태 변수이므로 다른 storage 타입을 할당할 수 없습니다.
        // y = memoryArray;

        // y를 가리키는 값 타입이 없으므로 에러가 발생합니다.
        // delete y;

        // x를 참조해 g() 함수에 전달합니다.
        g(x);

        // x는 storage 타입이므로 memory 타입에 할당할 때는
        // 복사본을 만들어 h() 함수를 실행합니다.
        h(x);
    }

    function g(uint[] storage) internal pure { }
    function h(uint[] memory) public pure { }
}