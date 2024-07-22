// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface Gaussian {
  function setValue(uint256) external;
  function getValue() external returns (uint256);
}

contract Deploy is Script {
  function run() public returns (Gaussian gaussian) {
    gaussian = Gaussian(HuffDeployer.deploy("Gaussian"));
  }
}
