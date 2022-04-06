//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars()
        external
        view
        returns (
            address,
            uint256,
            uint256
        )
    {
        address sender = msg.sender;
        uint256 timestamp = block.timestamp;
        uint256 blocknum = block.number;
        return (sender, timestamp, blocknum);
    }
}
