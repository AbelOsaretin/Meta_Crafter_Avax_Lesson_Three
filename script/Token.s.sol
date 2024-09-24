// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {AbelToken} from "../src/Token.sol";

contract CounterScript is Script {
    AbelToken public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new AbelToken(msg.sender);

        console.log("Deployed Token Address is: ", address(token));
        vm.stopBroadcast();
    }
}
