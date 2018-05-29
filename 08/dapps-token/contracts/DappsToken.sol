pragma solidity ^0.4.24; // ①

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol"; // ②

contract DappsToken is StandardToken { // ③
    string public name = "DappsToken"; // 토큰 이름 설정
    string public symbol = "DTKN"; // 토큰을 화폐 단위로 나타낼 때의 기호 설정
    uint public decimals = 18; // 토큰에서 허용할 소수점 자릿수 설정

    // ④
    constructor(uint initialSupply) public {
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;
    }
}