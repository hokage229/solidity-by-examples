//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract ValueTypes {
    bool public b = true;
    uint256 public u = 123;
    int256 public i = -123;
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;
    address public addr = 0x8626f6940E2eb28930eFb4CeF49B2d1F2C9C1199;
    // bytes32 public b32 =
    // 0x8626f6940E2eb28930eFb4C2222222333333333eF49B2d1F2C9C119933434;
}
