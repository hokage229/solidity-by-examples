//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Immutable {
    address public immutable owner;

    uint256 public x;

    constructor() {
        owner = msg.sender;
    }

    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }
}
