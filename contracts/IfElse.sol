//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract IfElse {
    function example(uint256 x) external pure returns (uint256) {
        if (x < 10) {
            return 3;
        } else if (x < 20) {
            return 19;
        }
        return 123;
    }

    function ternary(uint256 x) external pure returns (uint256) {
        return x > 10 ? 2 : 11;
    }
}
