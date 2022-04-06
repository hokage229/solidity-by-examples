//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Error {
    function testRequire(uint256 i) public pure {
        require(i <= 10, "i > 10");
        // code
    }

    function testRevert(uint256 i) public pure {
        if (i > 1) {
            if (i > 2) {
                if (i > 10) {
                    revert("i > 10");
                }
            }
        }
    }

    uint256 public num = 123;

    function testAssert() public view {
        assert(num == 123);
    }

    function foo(uint256 i) public {
        num++;
        require(i < 10);
    }

    error MyError(address caller, uint256 i);

    function testCustomError(uint256 i) public view {
        if (i > 10) revert MyError(msg.sender, i);
    }
}
