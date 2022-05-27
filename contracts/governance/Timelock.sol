//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract Timelock is TimelockController {
    constructor(
        uint256 minDelay,               //how long one have to wait before execution
        address[] memory proposers,     //list of addresses who can propose
        address[] memory executors      //list of addresses who can execute when a propsal passed
    ) TimelockController(minDelay, proposers, executors) {}
}
