const OwnableHelloWorld = artifacts.require("OwnableHelloWorld");

module.exports = function(deployer) {
    deployer.deploy(OwnableHelloWorld, { gas: 2000000 });
};
