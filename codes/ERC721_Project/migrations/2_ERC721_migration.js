const SampleNFTContract = artifacts.require("SampleNFTContract.sol");

module.exports = function (deployer) {
  deployer.deploy(SampleNFTContract);
};
