//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract StateVariables {
    uint256 public stateVariable = 123;

    function foo() public {
        uint256 nonStateVariable = 456;
    }
}
