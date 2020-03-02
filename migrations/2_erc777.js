const erc777 = artifacts.require("erc777");

module.exports = function(deployer) {
  deployer.deploy(erc777);
};
