//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract TestDelegateCall {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setVars(uint256 _num) external payable {
        sender = msg.sender;
        value = msg.value;
        num = _num;
    }
}

contract DelegateCall {
    uint256 public num;
    address public sender;
    uint256 public value;

    function delegateCall(address _test, uint256 _num) external payable {
        // _test.delegatecall(abi.encodeWithSignature("setVars(uint256)", _num));

        (bool success, bytes memory data) = _test.delegatecall(
            abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
        );

        require(success, "delegatecall failed");
    }
}
