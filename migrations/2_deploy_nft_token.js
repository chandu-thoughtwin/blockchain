const NftToken = artifacts.require("NftToken");

module.exports = function (deployer) {
  deployer.deploy(NftToken);
};
