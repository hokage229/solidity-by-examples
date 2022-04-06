//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract FunctionModifier {
    bool paused;
    uint256 public count;

    modifier unpaused() {
        require(!paused, "paused");
        _;
    }

    modifier cap(uint256 x) {
        require(x < 100, "x >= 100");
        _;
    }

    modifier sandwich() {
        count += 10;
        _;
        count *= 10;
    }

    function setPause() external {
        paused = true;
    }

    function inc() external unpaused {
        count++;
    }

    function dec() external unpaused {
        count--;
    }

    function incBy(uint256 x) external unpaused cap(x) {
        count += x;
    }

    function foo() external unpaused sandwich {
        count++;
    }
}
