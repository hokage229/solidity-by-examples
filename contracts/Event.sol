//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Event {
    event Log(string message, uint256 value);
    event IndexedLog(address indexed sender, uint256 value);

    function example() external {
        emit Log("foo", 123);
        emit IndexedLog(msg.sender, 111);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}
