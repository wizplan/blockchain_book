var DappsToken = artifacts.require("./DappsToken.sol"); // ①

contract('DappsToken', function(accounts) { // ②
    // ③
    it("should put 1000e18 DappsToken in the first account", function() {
        return DappsToken.deployed().then(function(instance) {
            return instance.balanceOf.call(accounts[0]);

        // ④
        }).then(function(balance) {
            assert.equal(balance.valueOf(), 1000e18, "1000e18 wasn't in the first account");
        });
    });
});