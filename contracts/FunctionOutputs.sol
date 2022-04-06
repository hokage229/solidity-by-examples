//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract FunctionOutputs {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function named() public pure returns (uint256 x, bool b) {
        return (1, true);
    }

    function assigned() public pure returns (uint256 x, bool b) {
        x = 1;
        b = true;
    }

    function destructingAssigments() public pure {
        (uint256 x, bool b) = returnMany();
        (, bool b2) = returnMany();
    }
}
