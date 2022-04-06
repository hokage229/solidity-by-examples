//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract IterableMapping {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address key, uint256 val) external {
        balances[key] = val;

        if (!inserted[key]) {
            inserted[key] = true;
            keys.push(key);
        }
    }

    function getSize() external view returns (uint256) {
        return keys.length;
    }

    function first() external view returns (uint256) {
        return balances[keys[0]];
    }

    function last() external view returns (uint256) {
        return balances[keys[keys.length - 1]];
    }

    function get(uint256 i) external view returns (uint256) {
        return balances[keys[i]];
    }
}
