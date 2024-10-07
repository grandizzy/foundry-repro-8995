// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import {UUPSProxy} from "../src/UUPSProxy.sol";

contract CounterTest is Test {
    function testCreateUUPSCounter() public {
        Counter counter = new Counter();
        UUPSProxy proxy = new UUPSProxy(address(counter), "");
    }
}
