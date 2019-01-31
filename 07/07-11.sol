pragma solidity >=0.4.22 <0.6.0;

contract Arrays {
    // 고정 배열
    uint[5] fArray = [uint(1), 2, 3, 4, 5];

    // 동적 배열
    uint[] dArray;

    function getFifteen() public view returns (uint) {
        uint res = 0;

        for (uint i = 0; i < fArray.length; i++) {
            res = res + fArray[i];
        }

        return res;
    }

    function getDArray() public returns (uint[] memory) {
        dArray.push(2);
        dArray.push(3);
        return dArray;
    }
}