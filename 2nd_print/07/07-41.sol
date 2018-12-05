pragma solidity ^0.4.25;

contract A {
    uint countA;

    function incrementA() public returns (uint) {
        countA++;
        return countA;
    }
}

contract B is A {
    uint countB;

    function incrementB() public returns (uint, uint) {
        countB++;
        return (countA, countB);
    }
}