//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable{
    uint256 private value;

    event valueChanged(uint256 valueNew);

    function storeValue(uint256 valueNew) public onlyOwner {         
        value = valueNew;
        emit valueChanged(valueNew);
    }

    function getValue() public view returns(uint256) {
        return value;        
    }
}