//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract VisibilityBase {
    uint256 private x = 100;
    uint256 internal y = 200;
    uint256 public z = 300;

    function privateF() private pure returns (uint256) {
        return 0;
    }

    function internalF() internal pure returns (uint256) {
        return 1;
    }

    function publicF() public pure returns (uint256) {
        return 2;
    }

    function externalF() external pure returns (uint256) {
        return 3;
    }

    function examples() external view {
        x + y + z;

        privateF();
        internalF();
        publicF();
    }
}

contract VisibilityChild is VisibilityBase {
    function examples2() external view {
        y + z;

        internalF();
        publicF();
    }
}
