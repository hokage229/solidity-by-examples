//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

library Math {
    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return x >= y ? x : y;
    }
}

contract Account {
    function testMax(uint256 x, uint256 y) external pure returns (uint256) {
        return Math.max(x, y);
    }
}

library ArrayLib {
    function find(uint256[] storage array, uint256 x)
        internal
        view
        returns (uint256)
    {
        for (uint256 i = 0; i < array.length; i++) {
            if (array[i] == x) {
                return i;
            }
        }
        revert("not found");
    }
}

contract TestArray {
    using ArrayLib for uint256[];
    uint256[] public array = [1, 2, 3];

    function testFind() external view returns (uint256 i) {
        return array.find(2);
    }
}
