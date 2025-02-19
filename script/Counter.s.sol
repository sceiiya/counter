// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address acc = vm.addr(deployerPrivateKey);

        console.log("Deployer address: ", acc);

        vm.startBroadcast();
        // address deployerAddress = vm.addr(deployerPrivateKey);

        // vm.startBroadcast(deployerPrivateKey);

        // uint64 nonce = vm.getNonce(deployerAddress);

        // console.log("nonce: ", nonce);
        // vm.setNonce(deployerAddress, ++nonce);

        // counter = new Counter();
        // console.log("Deploying contract...");
        // counter.deploy();
        // console.log("Deployed contract at: ", counter.address());

        // Set custom gas price (in wei)
        // uint256 gasPrice = 20000000000; // 20 gwei (customize this as needed)

        // Start broadcasting with the custom gas price
        // vm.startBroadcast(deployerPrivateKey, gasPrice);
        vm.startBroadcast(deployerPrivateKey);

        // uint64 nonce = vm.getNonce(deployerAddress);
        // console.log("nonce: ", nonce);

        // Deploy the contract
        counter = new Counter();

        vm.stopBroadcast();
    }
}
