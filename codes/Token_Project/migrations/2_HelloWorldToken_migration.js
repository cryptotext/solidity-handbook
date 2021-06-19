const FlatHelloWorldToken = artifacts.require("FlatHelloWorldToken");

module.exports = function (deployer) {
  deployer.deploy(FlatHelloWorldToken, 12000);
};
