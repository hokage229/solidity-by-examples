//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Constructor {
    uint256 public x;
    address public owner;

    constructor(uint256 _x) {
        x = _x;
        owner = msg.sender;
    }
}
