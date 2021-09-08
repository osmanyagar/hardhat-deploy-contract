// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./acsess-control/Auth.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private _value;
    event ValueChanged(uint256 value);

    function stroge(uint256 value) public onlyOwner {
        _value = value;
        emit ValueChanged(value);
    }
    function retrieve() public view returns(uint){
        return _value;
    }

}