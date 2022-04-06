//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract ArrayShift {
    uint256[] public nums;

    function example() public {
        nums = [1, 3, 4];
        delete nums[1];
    }

    function remove(uint256 index) public {
        require(index < nums.length, "index out of bounds");
        for (uint256 i = index; i < nums.length - 1; i++) {
            nums[i] = nums[i + 1];
        }

        nums.pop();
    }

    function test() external {
        nums = [1, 2, 3, 4, 5];
        remove(2);

        assert(nums[0] == 1);
        assert(nums[1] == 2);
        assert(nums[2] == 4);
        assert(nums[3] == 5);
        assert(nums.length == 4);

        nums = [1];
        remove(0);
        assert(nums.length == 0);
    }
}
