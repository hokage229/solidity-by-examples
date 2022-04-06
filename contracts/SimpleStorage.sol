//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract SimpleStorage {
    string public text;

    function setText(string calldata _text) external {
        text = _text;
    }

    function getText() external view returns (string memory) {
        return text;
    }
}
