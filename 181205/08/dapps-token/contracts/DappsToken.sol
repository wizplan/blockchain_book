pragma solidity ^0.4.24; // ①

// ②
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';

contract DappsToken is ERC20, ERC20Detailed  { // ③
    uint public initialSupply = 1000e18;

    // ④
    constructor() ERC20Detailed("DappsToken", "DTKN", 18) public {
        _mint(msg.sender, initialSupply);
    }
}