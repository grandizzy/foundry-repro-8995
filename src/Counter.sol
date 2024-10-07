// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {UUPSUpgradeable} from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

contract Counter is UUPSUpgradeable {
    function _authorizeUpgrade(address newImplementation_) internal override {}
}
