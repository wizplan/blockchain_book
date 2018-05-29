var DappsToken = artifacts.require("./DappsToken.sol"); // ①

// ②
module.exports = function(deployer) {
    var initialSupply = 1000e18;
    deployer.deploy(DappsToken, initialSupply, {
        gas: 2000000
    });
}