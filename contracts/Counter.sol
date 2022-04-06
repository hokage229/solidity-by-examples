//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Counter {
    uint256 public count;

    function inc() external {
        count++;
    }

    function dec() external {
        count--;
    }
}
