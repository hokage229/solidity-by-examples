//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract DataLocation {
    struct MyStruct {
        uint256 foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function example(uint256[] calldata y, string calldata s)
        external
        returns (uint256[] memory)
    {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "hi"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 1;
        // return readOnly;
        _internal(y);

        uint256[] memory memArr = new uint256[](3);
        memArr[0] = 123;
        return memArr;
    }

    function _internal(uint256[] calldata y) private {
        uint256 x = y[0];
    }
}
