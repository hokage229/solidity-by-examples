//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

interface ICounter {
    function count() external view returns (uint256);

    function inc() external;

    function dec() external;
}

contract CallInterface {
    uint256 public count;

    function examples(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}
