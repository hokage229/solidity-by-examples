//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract ViewAndPure {
    uint256 public num;

    function pureF() external pure returns (uint256) {
        return 1;
    }

    function viewF() external view returns (uint256) {
        return num;
    }

    function addNum(uint256 x) external view returns (uint256) {
        return num + x;
    }

    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }
}
