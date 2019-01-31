var DappsToken = artifacts.require("./DappsToken.sol"); // ①

// ②
module.exports = function(deployer) {
    deployer.deploy(DappsToken, {
        gas: 2000000
    });
}