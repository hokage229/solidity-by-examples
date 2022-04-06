//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract SendEth {
    constructor() payable {}

    receive() external payable {}

    function sendTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "sent failed");
    }

    function sendCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "call failed");
    }
}

contract EthReceiver {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
