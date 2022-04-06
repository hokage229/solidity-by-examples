//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract LocalVariables {
    uint256 public u;
    bool public b;
    address public myAddress;

    function foo() external {
        uint256 x = 123;
        bool f = false;

        x += 456;
        f = true;

        u = 123;
        b = true;
        myAddress = address(1);
    }
}
