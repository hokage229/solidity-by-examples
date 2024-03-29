//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract SendEth {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);

        // (bool sent, ) = msg.sender.call{value: _amount}("");
        // require(sent, "Failed to sent");
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
