//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Payable {
    address public owner;

    address payable public ss;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external view {}

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
