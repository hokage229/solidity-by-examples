//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint256 i = 0; i < 10; i++) {
            //code
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                break;
            }
        }

        uint256 j = 0;
        while (j < 10) {
            //code
            j++;
        }
    }

    function some(uint256 x) external pure returns (uint256) {
        uint256 s;

        for (uint256 i = 0; i < x; i++) {
            s += i;
        }
        return s;
    }
}
