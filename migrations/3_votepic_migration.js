var PixivRanking = artifacts.require("./PixivRanking.sol");

module.exports = function(deployer) {
  deployer.deploy(PixivRanking);
};
