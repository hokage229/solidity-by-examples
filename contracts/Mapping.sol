//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Mapping {
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function exapamples() external {
        balances[msg.sender] = 123;
        uint256 balance = balances[msg.sender];
        uint256 balance2 = balances[address(1)]; // 0

        balances[msg.sender] += 455;

        delete balances[msg.sender]; // 0

        isFriend[msg.sender][address(this)] = true;
    }
}
