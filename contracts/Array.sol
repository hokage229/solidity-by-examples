//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract Array {
    uint256[] public nums = [1, 2, 3];
    uint256[3] public fixNums = [1, 2, 3];

    function examples() public {
        nums.push(4);
        uint256 x = nums[0];
        nums[2] = 444;
        delete nums[1];
        nums.pop();
        uint256 len = nums.length;

        uint256[] memory a = new uint256[](4);
        a[1] = 123;
    }

    function returnArray() public returns (uint256[] memory) {}
}
